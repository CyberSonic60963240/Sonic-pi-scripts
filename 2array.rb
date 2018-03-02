use_bpm 100
# this is a comment
synth_names:growl
with_fx:compressor do
end
index = 0
Joshua_notes = [:gs,:fs,:es,:gs,:gs,:fs,:fs,:r,:es,:gs,:b,:cs,:a,:a,:gs] # an array is a list of values
Joshua2_sleep = [0.5,0.5,1,0.5,0.5,0.5,1.5,0.5,0.5,0.5,0.25,0.75,0.5,0.5,0.5,] # an array for the sleep
live_loop :cheerleader do
  index = 0
  15.times do # go 15 times because we have 15 va;ues in joshua_notes
    play Joshua_notes[index]
    sleep Joshua2_sleep[index]
    index = index + 1 #value will go up 1 every note and sleep
  end
  
  # loop the drum beat
  live_loop :drums do
    7.times do
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_snare_hard
      sleep 0.5
    end
    2.times do
      sample :drum_heavy_kick
      sleep 0.25
      sample :drum_snare_hard
      sleep 0.25
    end
  end
  
end
