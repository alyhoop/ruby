#Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  results = dictionary.select {|item| item.include?(word)}
  p results.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
end

substrings("below", dictionary)

# words = %w(how much wood would a wood chuck chuck)
#
# p words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
