puts(2.next)
#puts(1.methods)
x=['rock','paper','scissors'].index('paper')
puts(x)
number=-3
if(number>0)
    puts("#{number} is positive")
elsif number == 0
    puts("#{number} is 0")
else
    puts("#{number} is negative")
end

number>0 ? puts("#{number} is positive") : puts("#{number} is not positive")

5.times do
    puts("Sanam")
end

[1,2,3,4,5,6,7].delete(5) #removes 5 from array and returns 5
x=[1,2,3,4,5,6,7].delete(5)
puts(x) #prints 5

arr=[1,2,3,4,5,6,7,8,9]
arr.delete_if{|i| i%2==0} #deletes even entries
puts(arr) #will print all odd numbers

#for loops, prints all elements of array
for i in arr
    puts i
end

#COPY ENTRIES LESS THAN 4 INTO ANOTHER ARRAY
def array_copy(source)
  destination = []
  for number in source
    #method 1:
    #destination << number if number < 4
    #method 2:
    if number <4
      destination.push(number)
    end
    
  end
  return destination
end

#OR, using EACH 
def array_copy(source)
  destination = []
  source.each do |number|
    # Add number to destination if number
    # is less than 4
    destination << number if number < 4
  end
  return destination
end


#problem: Given an array containing some strings, 
#return an array containing the length of those strings.


def length_finder(input_array)
  length_array=[]
  input_array.each do |entry|
    x=entry.length
    length_array.push(x)
  end
  return length_array
end


#Problem: given a sentence containing multiple words, 
#find the frequency of a given word in that sentence.

def find_frequency(sentence, word)
  sentence=sentence.downcase
  sentence=sentence.split
  return sentence.count(word.downcase)
end


#Problem: Create a method named 'sort_string' which accepts a String and 
#rearranges all the words in ascending order, by length. 
#Let's not treat the punctuation marks any different than other characters and 
#assume that we will always have single space to separate the words.



def sort_string(string)
  string=string.split(' ').sort{|x,y| x.length<=> y.length}
  return string.join(' ')
end

sorted=sort_string("Sanam nam na m")
puts(sorted)


#Problem: Create a method 'random_select' which, when 
#given an array of elements (array) and a number (n)returns 
#n randomly selected elements from that array

def random_select(array, n)
  random_elements=[]
  n.times do
    i=rand(array.length)
    random_elements.push(array[i])
  end
  return random_elements
end



#Problem: given a sentence, return true if sentence is palindrome
def palindrome?(sentence)
  sentence=sentence.downcase
  sentence=sentence.split
  sentence=sentence.join()
  reverse=sentence.reverse
  if(sentence==reverse)
    return true
  end
  return false
end


#problem: Compute the sum of cubes for a given range a through b.
def sum_of_cubes(a, b)
  sum=0
  i=a
  while (i<=b) do 
    sum=sum+(i*i*i)
    i=i+1
  end
    return sum
end



#Problem 
#9 is a Kaprekar number since 9 ^ 2 = 81 and 8 + 1 = 9
#297 is also Kaprekar number since  297 ^ 2 = 88209 and 88 + 209 = 297.
#In short, for a Kaprekar number k with n-digits, 
#if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
#Find if a given number is a Kaprekar number.

def kaprekar?(k)
  no_of_digits = k.to_s.size
  square = (k ** 2).to_s 
  second_half = square[-no_of_digits..-1]
              # condition ? if met do this    : else command goes here
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]
  k == first_half.to_i + second_half.to_i
end
