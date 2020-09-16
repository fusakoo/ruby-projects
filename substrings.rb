# simple method to cross-reference a given string to an array (dictionary)

def substring(string, array)
  output = Hash.new(0)

  sample_word = array.select { |word| string.downcase.include? word }
  sample_word.each do |word|
    #scan the number of times the word appears in string & check the length of array created
    output[word] = string.downcase.scan(word).length
  end
  p output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("below", dictionary)
substring("Howdy partner, sit down! How's it going?", dictionary)
