import whisper

model = whisper.load_model("base")
result = model.transcribe("./vids/THE_ROBOTS_ARE_TAKING_OVER!.mp4")
lines = result["text"]

with open("./out/script.txt", "w+") as f:
    f.write(lines)
