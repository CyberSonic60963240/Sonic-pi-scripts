# Stranger Things Main Theme
# NOTE: Each measure's total sleep adds up to 4 because the time signature is 4/4
use_bpm 160
use_synth :saw
Joshua_notes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2] # an array is a list of values
index = 0
8.times do # go 8 times because 8 notes
  with_fx :distortion do
    play Joshua_notes[index]
    sleep 0.5
    index = index + 1 #tone will go up 1 every note
  end
end



