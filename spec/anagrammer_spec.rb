describe "an anagrammer" do
  it "should return a list of just one anagram when input word is one char long" do
    word = "a"
    expect(anagrams(word)).to eq(["a"])
  end
end