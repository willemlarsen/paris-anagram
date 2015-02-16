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
end