def fibs(number)
  result = []

  # result.each_with_index do |el, i|
  number.times do |n|
    result << if n < 2
                n
              else
                (result[n - 1] + result[n - 2])
              end
  end
  result
end

def fibs_rec(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  arr = fibs_rec(num - 1)

  arr << (arr[-1] + arr[-2])
end

puts fibs_rec(5).inspect
