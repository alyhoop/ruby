# https://www.youtube.com/watch?v=36xNpbosfTY&ab_channel=CS50

str = 'I SPEAK FRENCH!'


LOWERCASE_LOOKUP = ('a'..'z').to_a
UPPERCASE_LOOKUP = ('A'..'Z').to_a

def caesar_cipher(str, shift)
  str.chars.map do |char|
    if LOWERCASE_LOOKUP.include?(char)
      LOWERCASE_LOOKUP[(LOWERCASE_LOOKUP.index(char) + shift) % LOWERCASE_LOOKUP.size]
    elsif UPPERCASE_LOOKUP.include?(char)
      UPPERCASE_LOOKUP[(UPPERCASE_LOOKUP.index(char) + shift) % UPPERCASE_LOOKUP.size]
    else
      char
    end
  end.join
end

p caesar_cipher(str, 13)
p caesar_cipher(str, 5)
