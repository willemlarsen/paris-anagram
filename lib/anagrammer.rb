def remove_nth_char(position, string)
  string.slice(0, position) + string.slice(position + 1, string.length - 1 - position)
end

def anagrams(word)
  return [word] if word.length == 1
  (0...word.length).map do |i|
    word[i] + remove_nth_char(i, word)
  end
end
