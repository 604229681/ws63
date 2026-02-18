#!/usr/bin/env python3
"""
Simple WebSocket server for testing audio streaming from embedded device.
Receives binary audio data and saves it to a WAV file.

Device sends audio in 32-bit packed format with [A, B, A, B] duplication.
This script removes duplicates and extracts the left channel for mono WAV.

Usage:
    python3 websocket_server.py
"""
#websocket服务器，并可以保存音频文件。
import asyncio
import websockets
import struct
import wave
from datetime import datetime

# Audio parameters
SAMPLE_RATE = 16000  # 16kHz
CHANNELS = 1  # Mono (device duplicates mono to stereo)
SAMPLE_WIDTH = 2  # 16-bit = 2 bytes

def unpack_audio_data(packed_data):
    """
    Extract left channel from device's 32-bit packed format with deduplication.
    
    CRITICAL: Device sends data in a [A, B, A, B] repetition pattern:
      Frame 0: Sample A
      Frame 1: Sample B
      Frame 2: Sample A (Duplicate)
      Frame 3: Sample B (Duplicate)
    
    We must keep frames 0,1 and skip 2,3 to restore correct 16kHz audio.
    
    Args:
        packed_data: bytes - Raw data from device (4 bytes per frame)
    
    Returns:
        bytes - Mono 16-bit PCM data (deduplicated, left channel only)
    """
    if len(packed_data) % 4 != 0:
        print(f"Warning: Data length {len(packed_data)} is not a multiple of 4, truncating")
        packed_data = packed_data[:len(packed_data) - (len(packed_data) % 4)]
    
    num_frames = len(packed_data) // 4
    unpacked = bytearray()
    
    for i in range(num_frames):
        # Deduplication logic: Keep first 2 frames of every 4
        # Pattern: Keep, Keep, Skip, Skip
        if (i % 4) >= 2:
            continue
            
        # Read 32-bit packed word (little-endian)
        offset = i * 4
        packed_word = struct.unpack_from('<I', packed_data, offset)[0]
        
        # Extract only left channel (low 16 bits)
        left_sample = packed_word & 0xFFFF
        
        # Convert to signed 16-bit
        if left_sample >= 0x8000:
            left_sample -= 0x10000
        
        # Pack as 16-bit sample
        unpacked.extend(struct.pack('<h', left_sample))
    
    return bytes(unpacked)

class AudioRecorder:
    def __init__(self):
        self.audio_data = bytearray()
        self.client_count = 0
        self.file_count = 0
        # Device sends 8192 bytes every 128ms (2048 frames * 4 bytes)
        # After unpacking to mono: 2048 samples * 2 bytes = 4096 bytes per chunk
        # For 10 seconds: 10 / 0.128 = 78.125 chunks → ~320KB
        self.MIN_SIZE = 320000  # ~320KB for 10 seconds of mono audio
        self.total_received = 0
        self.total_saved = 0
        
    async def handle_client(self, websocket):
        client_id = self.client_count
        self.client_count += 1
        client_addr = websocket.remote_address
        
        print(f"[{client_id}] Client connected from {client_addr}")
        print(f"[{client_id}] Auto-save enabled: files will be saved every ~10 seconds ({self.MIN_SIZE} bytes)")
        print(f"[{client_id}] Format: Deduplicating [A,B,A,B] pattern & Extracting left mono")
        
        try:
            async for message in websocket:
                # Receive binary audio data
                if isinstance(message, bytes):
                    chunk_size = len(message)
                    self.total_received += chunk_size
                    
                    # Unpack from 32-bit packed format to 16-bit interleaved
                    unpacked = unpack_audio_data(message)
                    self.audio_data.extend(unpacked)
                    
                    total_size = len(self.audio_data)
                    print(f"[{client_id}] Received {chunk_size} bytes (packed) -> {len(unpacked)} bytes (unpacked), buffer: {total_size} bytes")
                    
                    # Auto-save when buffer exceeds minimum size
                    if total_size >= self.MIN_SIZE:
                        self.save_audio(client_id)
                        
                else:
                    print(f"[{client_id}] Received text message: {message}")
                    
                # Echo audio back to client for playback test
                if isinstance(message, bytes):
                    await websocket.send(message)

                    
        except websockets.exceptions.ConnectionClosed as e:
            print(f"[{client_id}] Connection closed: {e}")
        except Exception as e:
            print(f"[{client_id}] Error: {e}")
            import traceback
            traceback.print_exc()
        finally:
            print(f"[{client_id}] Client disconnected")
            print(f"[{client_id}] Total received: {self.total_received} bytes, Total saved: {self.total_saved} bytes")
            
            # Save any remaining data
            if len(self.audio_data) > 0:
                print(f"[{client_id}] Saving remaining {len(self.audio_data)} bytes")
                self.save_audio(client_id)
    
    def save_audio(self, client_id):
        """Save received audio data to WAV file"""
        if len(self.audio_data) == 0:
            return
            
        self.file_count += 1
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"audio_{timestamp}_part{self.file_count}.wav"
        
        print(f"[{client_id}] Saving {len(self.audio_data)} bytes to {filename}")
        
        try:
            with wave.open(filename, 'wb') as wav_file:
                wav_file.setnchannels(CHANNELS)
                wav_file.setsampwidth(SAMPLE_WIDTH)
                wav_file.setframerate(SAMPLE_RATE)
                wav_file.writeframes(bytes(self.audio_data))
            
            duration = len(self.audio_data) / (SAMPLE_RATE * CHANNELS * SAMPLE_WIDTH)
            self.total_saved += len(self.audio_data)
            print(f"[{client_id}] ✓ Audio saved successfully! Duration: {duration:.2f} seconds")
            print(f"[{client_id}] ✓ File: {filename}")
            
        except Exception as e:
            print(f"[{client_id}] ✗ Error saving audio: {e}")
            import traceback
            traceback.print_exc()
        
        # Clear buffer for next chunk
        self.audio_data = bytearray()
        print(f"[{client_id}] Buffer cleared, ready for next chunk")

async def main():
    recorder = AudioRecorder()
    
    # Start server on all interfaces, port 8000
    server = await websockets.serve(
        recorder.handle_client,
        "0.0.0.0",  # Listen on all network interfaces
        8000,
        ping_interval=None,  # Disable ping/pong for simplicity
        max_size=10 * 1024 * 1024  # 10MB max message size
    )
    
    print("=" * 60)
    print("WebSocket Audio Server Started")
    print("=" * 60)
    print(f"Listening on: ws://0.0.0.0:8000")
    print(f"Audio format: {SAMPLE_RATE}Hz, {CHANNELS} channels, {SAMPLE_WIDTH*8}-bit")
    print("Waiting for device connections...")
    print("=" * 60)
    print()
    
    # Run forever
    await asyncio.Future()

if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        print("\nServer stopped by user")
