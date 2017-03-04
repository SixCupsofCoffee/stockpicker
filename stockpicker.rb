def stock_picker(prices)
  ((0...prices.length).to_a)
    .repeated_permutation(2)
    .select {|start, finish| finish > start}
    .max_by {|start, finish| prices[finish] - prices[start]}
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
