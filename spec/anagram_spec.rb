require 'anagram'

describe 'remove_from_list from list' do 
  it 'creates a new list with the given element removed' do 
    rejectable = 'robert'
    list = ['robert', 'benjamin', 'frank']
    expect(remove_from_list(rejectable, list)).to eq(['benjamin', 'frank'])
  end

  it 'only removes the first instance of an element from the list' do 
    rejectable = 'robert'
    list = ['robert', 'benjamin', 'frank', 'robert']
    expect(remove_from_list(rejectable, list)).to eq(['benjamin', 'frank', 'robert'])
  end
end

describe 'distribute_over' do 
  it 'adds an item to each sublist' do 
    new_item = 'a'
    list = [['b', 'c'], ['c', 'b']]
    expect(distribute_over(new_item, list)).to eq(
      [['a', 'b', 'c'], ['a', 'c', 'b']])
  end
end

describe 'permutation' do 
  it 'creates a list of permutations of a given list of one, one item list' do 
    list = ['a']
    expect(permutation(list)).to eq([['a']])
  end
  it 'does the same for a list of multiple lists' do 
    list = ['a', 'b']
    expect (permutation(list)).to eq([[a, b], [b, a]])
  end
end

# permutation([a, b]) -> [[a, b], [b, a]]
# [distribute_over(a, [[b]]), distribute_over(b, [[a]])]
# [distribute_over(a, remove(a,[a,b])), distribute_over(b, remove(b, [a, b]))]