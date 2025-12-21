
import os
import sys
import glob
from faster_whisper import WhisperModel

def get_latest_wav():
    """Find the most recent WAV file in the current directory."""
    wav_files = glob.glob("*.wav")
    if not wav_files:
        return None
    return max(wav_files, key=os.path.getctime)

def transcribe_audio(audio_file, model_size="small", device="cpu", compute_type="int8"):
    """
    Transcribe audio file using faster-whisper.
    
    Args:
        audio_file (str): Path to audio file.
        model_size (str): Model size (tiny, base, small, medium, large-v2, large-v3).
        device (str): Device to run on (cpu, cuda).
        compute_type (str): Quantization (int8, float16, int8_float16).
    """
    if not os.path.exists(audio_file):
        print(f"Error: File '{audio_file}' not found.")
        return

    print(f"Loading model '{model_size}' on {device} with {compute_type}...")
    try:
        model = WhisperModel(model_size, device=device, compute_type=compute_type)
    except Exception as e:
        print(f"Error loading model: {e}")
        return

    print(f"Transcribing '{audio_file}'...")
    try:
        segments, info = model.transcribe(audio_file, beam_size=5)

        print(f"Detected language '{info.language}' with probability {info.language_probability:.2f}")
        print("-" * 50)

        for segment in segments:
            print(f"[{segment.start:.2f}s -> {segment.end:.2f}s] {segment.text}")
            
        print("-" * 50)
        print("Transcription complete.")
        
    except Exception as e:
        print(f"Error during transcription: {e}")

def main():
    # Check for command line argument
    if len(sys.argv) > 1:
        audio_files = sys.argv[1:]
    else:
        # Auto-detect latest
        latest = get_latest_wav()
        if latest:
            print(f"No file specified. Using latest WAV file: {latest}")
            audio_files = [latest]
        else:
            print("Usage: python3 asr_faster_whisper.py <audio_file>")
            print("No WAV files found in current directory to auto-process.")
            return

    for audio_file in audio_files:
        transcribe_audio(audio_file)

if __name__ == "__main__":
    main()