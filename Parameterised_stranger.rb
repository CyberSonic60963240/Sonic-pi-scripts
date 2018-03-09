use_bpm 160
use_synth :saw
define :play_eighth_notes do |n,m,s,d,p|
  play n
  sleep p
  play m
  sleep p
  play s
  sleep p
  play d
end
play_eighth_notes :c3,:b2,:g2,:e2,0.5
define :play_eighth_notes do |n,m,s,d,p|
  # First set of eighth notes
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play_eighth_notes :c2, :e2, :g2, :b2, 0.5
end

=begin
