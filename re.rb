def coin(amount, array)
  return 0 if amount < 0 || array.empty?
  return 1 if amount == 0
  coin(amount - array[0], array) + coin(amount, array[1..array.size - 1])
end

p coin(1000, [1, 2, 5])
