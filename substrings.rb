# simple method to cross-reference a given string to an array (dictionary)

def substring(string, array)
  output = {}

  string.downcase.split(' ').each do |word|
    if array.include?(word)
      if output.has_key?(word)
        output[word] += 1
      else
        output[word] = 1
      end
    end
  end
  p output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("below", dictionary)
