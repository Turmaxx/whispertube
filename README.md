# WhisperTube
Automatically Generate Subtitles from [YouTube](https://youtube.com)

This repository was started on a Sunday Night, to be specific on Sunday, August 20, 2023. Out of curiosity about OpenAI's Whisper Model which they open-sourced, a couple of months ago I know I'm kinda late to the party but in my defence, it was internship season. 

My implementation is pretty basic using [Poetry](https://python-poetry.org/) for package management [OpenAI's Whisper](https://openai.com/blog/whisper) to generate subtitles or transcription for any youtube video and [PyTube](https://pytube.io/en/latest/) to install the YouTube vidoe that you want. There are python scripts currently, `main.py` just installs the video that you have specified onto your system on the vids folder, the other transcribes that videos and outs the transcriptions/subtiles to a VTT, CSV or a regular'ole text file. 

There is a better implementation that I will write later this week or when I have time that just straight up installs the video and that is it. (may be also add a bit of multi-threading and concurrency who knows, so we can do multiple jobs at once. [Go](https://go.dev) was much better for this since it has built in concurrency on the language, so I'll so what I can do if I do a rewrite.)

I have 2 vidoes on this repo to test out where it works also, check out the vidoes here, [COSTA RICA IN 4K 60fps HDR (ULTRA HD)](https://www.youtube.com/watch?v=LXb3EKWsInQ) and [THE ROBOTS ARE TAKING OVER](https://www.youtube.com/watch?v=bv-7vhJtm84). (this 2 vidoes are kinda of special to me since I want to visit costa rica and i love cycling from a young age.)

## Get things going
You will have to have `nix` installed on your system, commands for that can be found on the [offical Nix website](https://nixos.org/download.html) for your desired host OS or even Docker.

> Why not just use a Dockerfile you ask?
 
Well, I didn't want to install a whole image on my system and nix provides dev shells which are pretty convienent to get things up and running for quick development.
NOTE: my `flake.nix` did not work unfortunately, so I just used a `shell.nix` instead. it works but it's not ideal.

## Usage

The following command will generate a VTT file from the specified YouTube video

    whispertube "https://www.youtube.com/watch?v=dQw4w9WgXcQ"

The default setting (which selects the `small` model) works well for transcribing English. You can optionally use a bigger model for better results (especially with other languages). The available models are `tiny`, `tiny.en`, `base`, `base.en`, `small`, `small.en`, `medium`, `medium.en`, `large`.

    whispertube "https://www.youtube.com/watch?v=dQw4w9WgXcQ" --model medium

Adding `--task translate` will translate the subtitles into English:

    whispertube "https://www.youtube.com/watch?v=dQw4w9WgXcQ" --task translate

Specifying multiple jobs, do not use unless you have a great GPU or you want to roast your existing one lmaooo.

    whispertube vidoes.txt

Run the following to view all available options:

    whispertube --help

## License

This script is open-source and licensed under The Unlicense license. For more details, check the [LICENSE](LICENSE) file.