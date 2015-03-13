def anagrams(word)
  return [word] if word.length == 1
  (0...word.length).flat_map do |i|
    char = word[i]
    sub_word = remove_nth_char(i, word)
    distribute_char_over_sub_anagrams(char, anagrams(sub_word))
  end.uniq
end

def remove_nth_char(position, string)
  string.slice(0, position) + string.slice(position + 1, string.length - 1 - position)
end

def distribute_char_over_sub_anagrams(char, sub_anagrams)
  sub_anagrams.map do |sub_anagram|
    char + sub_anagram
  end
end
