def remove_char(char, string)
  string.slice(1, string.length - 1)
end

def anagrams(word)
  return [word] if word.length == 1
  a_removed = remove_char("a", word)
  ["a" + a_removed, "ba"]
end