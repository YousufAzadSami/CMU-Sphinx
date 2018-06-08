pocketsphinx_continuous -infile HelloAudio/Hello0.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

pocketsphinx_continuous -infile HelloAudio/Hello1.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

pocketsphinx_continuous -infile HelloAudio/Hello2.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

pocketsphinx_continuous -infile HelloAudio/Hello3.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

pocketsphinx_continuous -infile HelloAudio/Hello_a0.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

pocketsphinx_continuous -infile HelloAudio/Hello_a1.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

pocketsphinx_continuous -infile HelloAudio/Hello_a2.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

pocketsphinx_continuous -infile HelloAudio/Hello_a3.wav -hmm  model/en-us/en-us \
                        -allphone model/en-us/en-us-phone.lm.bin  -backtrace yes \
                        -beam 1e-20 -pbeam 1e-20 -lw 2.0 >> HelloPhonemeOutput

