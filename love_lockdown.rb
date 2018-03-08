=begin

TASK 1: Import the sample from "Love Lockdown" into this buffer and play it using the live_loop on line 39.

TASK 2: Use the .mp3 file and Audacity to take another sample from the song, and incorporate it into this script.

=end

use_bpm 120
use_synth :dtri
use_synth_defaults cutoff: 80
kanye_beat ="C:/Users/joshua_jimenez.DAVINCISCHOOLS/Desktop/joshua.wav"
kanye_vocals = "C:/Users/joshua_jimenez.DAVINCISCHOOLS/Desktop/love_lockdown.wav"
sample_used = :bd_808
x=0


live_loop :drum_beat do
  sample sample_used, amp: 2
  sleep 0.5
  sample sample_used, amp: 2
  sleep 1.5
  sample sample_used, amp: 2
  sleep 2
end

# use a variable so that each time the live_loop repeats itself the volume of the synth increases in amplitude (start the amplitude at 0 so it is inaudible to start!)

live_loop :synth_sound do
  play :cs2, amp: x
  sleep 0.5
  play :cs2, amp: x
  sleep 0.5
  play :e2, sustain: 0.5, amp: x
  sleep 1
  
  # play two notes concurrently (at the same time)
  play :cs2, sustain: 1, detune: 0.12, amp: x
  play :cs1, sustain: 1
  sleep 2
  x= x+2
end

live_loop :kanye_vocals do
  sample kanye_vocals
  print
  sample_duration kanye_vocals
  sleep 16 # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
end
live_loop :kanye_beat do
  sample kanye_beat
  print
  sample_duration kanye_beat
  sleep 190 # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
end

