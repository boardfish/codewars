def song_decoder(song)
  song.split('WUB').reject(&:empty?).join(' ')
end
