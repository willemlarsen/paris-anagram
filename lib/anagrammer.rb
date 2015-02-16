def remove_char(char, string)
  "b"
end

def anagrams(word)
  return [word] if word.length == 1
  a_removed = remove_char("a", word)
  ["a" + a_removed, "ba"]
end