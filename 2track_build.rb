use_bpm 100
x = 0.30
y2 = :perc_bell
5.times do
  sample y2,amp: x
  sleep 1
  x = x + 1
end
live_loop :josh do
  play:gs
  sleep 0.5
  play:fs
  sleep 0.5
  play:es
  sleep 1
  play:gs
  sleep 0.5
  play:gs
  sleep 0.5
  play:fs
  sleep 0.5
  play:fs
  sleep 1.5
  play:r
  sleep 0.5
  play:es
  sleep 0.5
  play:gs
  sleep 0.5
  play:b
  sleep 0.25
  play:cs
  sleep 0.75
  play:a
  sleep 0.5
  play:a
  sleep 0.5
  play:gs
  sleep 0.5
end
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
