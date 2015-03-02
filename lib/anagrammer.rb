def remove_nth_char(position, string)
  string.slice(0, position) + string.slice(position + 1, string.length - 1 - position)
end

def anagrams(word)
  return [word] if word.length == 1
  first = word[0] + remove_nth_char(0, word)
  second = word[1] + remove_nth_char(1, word)
  [first, second]
end
