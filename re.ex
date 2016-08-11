defmodule Test do
  def coin_com(amount, array) do
    case {amount, array} do
      {0, ar} -> 1
      {am, ar} when am < 0 == 0 -> 0
      {am, ar} when length(ar) == 0 -> 0
      {am, [ head | tail ]} -> coin_com(am-head, [ head | tail ]) + coin_com(am, tail)
    end
  end

  Test.coin_com(1000, [1,2,5])
end
