require("anagrammer")

describe "an anagrammer" do
  it "should return a list of just one anagram when input word is one char long" do
    word = "a"
    expect(anagrams(word)).to eq(["a"])
  end

  it "should return a list of two anagrams when input word is made of two different chars" do
    word = "ab"
    expect(anagrams(word)).to eq(["ab", "ba"])
  end

  it "should return a list of six anagrams when input word is made of three different chars" do
    word = "abc"
    expected_result = ["abc", "acb", "bac", "bca", "cab", "cba"]
    expect(anagrams(word)).to eq(expected_result)
  end
end

describe "a char remover" do
  it "can remove the first char of any string" do
    expect(remove_nth_char(0, "abc")).to eq("bc")
  end

  it "can remove the second char of any string" do
    expect(remove_nth_char(1, "abc")).to eq("ac")
  end
end

describe "distribute char over a list of strings" do
  it "means this char is inserted at beginning of each string" do
    distributed = distribute_char_over_sub_anagrams("a", ["bc", "de"])
    expect(distributed).to eq(["abc", "ade"])
  end
end
