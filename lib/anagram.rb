def remove_from_list(element, list)
  newlist = []
  not_found_yet = true
  list.each do |item|
    if item == element and not_found_yet
      not_found_yet = false
    else
      newlist.push(item)
    end
  end
  newlist
end

def distribute_over(element, list)
  newlist = []
  list.each do |sublist|
    newlist.push([element] + sublist)
  end
  newlist
end

def permutation(list)
  list.each do |sublist|
  # [distribute_over(a, remove(a,[a,b])), distribute_over(b, remove(b, [a, b]))]  
  end
end