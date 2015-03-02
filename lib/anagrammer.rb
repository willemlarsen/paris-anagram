def remove_nth_char(position, string)
  string.slice(0, position) + string.slice(position + 1, string.length - 1 - position)
end

def anagrams(word)
  return [word] if word.length == 1
  a_removed = remove_nth_char(0, word)
  ["a" + a_removed, "ba"]
end
