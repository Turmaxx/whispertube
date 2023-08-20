from pytube import YouTube

def Download(link):
    youtubeObject = YouTube(link)
    youtubeObject = youtubeObject.streams.get_highest_resolution()
    try:
        youtubeObject.download(output_path="./vids")
    except:
        print("An error has occurred")
    print(f"{youtubeObject.title} is completed successfully")


link = "https://www.youtube.com/watch?v=bv-7vhJtm84"
Download(link)