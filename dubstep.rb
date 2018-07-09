# https://www.codewars.com/kata/551dc350bf4e526099000ae5
def song_decoder(song)
  song.split('WUB').reject(&:empty?).join(' ')
end
