
# coding: utf-8

# In[18]:

# pre-requisite #1
# pip install pydub 

# pre-requisite #2 
# pip install msgpack

# pre-requisite #3 
# sudo add-apt-repository ppa:mc3man/trusty-media  
# sudo apt-get update  
# sudo apt-get install ffmpeg  
# sudo apt-get install frei0r-plugins


from pydub import AudioSegment
from pydub.silence import split_on_silence
from pydub.playback import play

sound_file = AudioSegment.from_wav("Audio//Hello.wav")
#play(sound_file)
audio_chunks = split_on_silence(sound_file, 
    # must be silent for at least half a second
    min_silence_len=200,

    # consider it silent if quieter than -16 dBFS
    silence_thresh=-25
)
print(sound_file)
print(audio_chunks)
for i, chunk in enumerate(audio_chunks):

    out_file = ".//splitAudio//chunk_a{0}.wav".format(i)
    print ("exporting", out_file)
    chunk.export(out_file, format="wav")