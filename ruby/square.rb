def square_digits num
  p num.digits.reverse.map { |n| n**2 }.join.to_i
end

square_digits(223)
