
# App Academy Practice Exercise

# 9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9
# 297 is also Kaprekar number since  297 ^ 2 = 88209 and 88 + 209 = 297.
# In short, for a Kaprekar number k with n-digits, 
# if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
# Find if a given number is a Kaprekar number.


def kaprekar?(k)
  num_digits = k.to_s.length
  square = (k*k).to_s
  
  left=square[-num_digits..-1] #count backwards
  left=left.to_i
  
  if(square.size.even?)
    right=square[0..num_digits-1]
  else
    right=square[0..num_digits-2]
  end
  right=right.to_i
  
  return (k==left+right)
end

puts(kaprekar?(9))
puts(kaprekar?(297))
