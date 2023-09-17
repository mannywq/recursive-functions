def merge_sort(list)
  return list if list.length < 2

  mid = (list.length - 1) / 2
  # puts "Mid is #{mid}"

  left = list[0..mid]
  # puts "Left #{left.inspect}"
  right = list[mid + 1..]
  # puts "Right #{right.inspect}"

  result = []

  left = merge_sort(left)
  right = merge_sort(right)

  result << (left[0] < right[0] ? left.shift : right.shift) until left.empty? || right.empty?

  # puts "Merging results, left, right #{result + left + right}"
  result + left + right
end

arr = Array.new(10) { rand(1..20) }
puts arr.inspect

result = merge_sort(arr)

puts result.inspect
