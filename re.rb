def coin_com(amount, array)
  return 0 if amount < 0 || array.size == 0
  return 1 if amount == 0
  coin_com(amount-array[0], array) + coin_com(amount, array[1..array.size-1])
end

p coin_com(1000, [1,2,5])
