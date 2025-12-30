
import os
import sys
import glob

# Suppress the symlink warning from huggingface_hub on Windows
os.environ["HF_HUB_DISABLE_SYMLINKS_WARNING"] = "1"

# Import faster_whisper after setting the env var
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
    Returns the transcribed text string.
    """
    if not os.path.exists(audio_file):
        print(f"Error: File '{audio_file}' not found.")
        return ""

    print(f"Loading model '{model_size}' on {device} with {compute_type}...")
    print(f"-> Please wait. If this is the first run, the model (~500MB) is being downloaded.")
    
    try:
        model = WhisperModel(model_size, device=device, compute_type=compute_type)
    except Exception as e:
        print(f"Error loading model: {e}")
        return ""

    print(f"Transcribing '{audio_file}'...")
    full_text = []
    
    try:
        segments, info = model.transcribe(audio_file, beam_size=5)

        print(f"Detected language '{info.language}' with probability {info.language_probability:.2f}")
        print("-" * 50)

        for segment in segments:
            print(f"[{segment.start:.2f}s -> {segment.end:.2f}s] {segment.text}")
            full_text.append(segment.text)
            
        print("-" * 50)
        print("Transcription complete.")
        return " ".join(full_text)
        
    except Exception as e:
        print(f"Error during transcription: {e}")
        return ""

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