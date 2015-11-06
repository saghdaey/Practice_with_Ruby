
# APP ACADEMY MINI CURRICULUM NOTES

# Part I: Arrays

some_fruits=["pear", "apple", "banana"]

#range .. inclusive
puts("[0..1]")
puts(some_fruits[0..1])
puts("[0..2]")
puts(some_fruits[0..2])

#range ... leaves off last entry of return array
puts("[0...2]")
puts(some_fruits[0...2])

#iterating through an array in order

cool_things=["race cars", "lasers", "aeroplanes"]
cool_things.each do |cool_things|
    puts("I like #{cool_things}!")
end

some_numbers=[0,1,2]
more_numbers=[3,4,5]
all_numbers=some_numbers+more_numbers
puts(all_numbers) #all_numbers=[0,1,2,3,4,5]

#size of an array 
size=all_numbers.count
size2=all_numbers.size
size3=all_numbers.length
puts(size==size2)
puts(size==size3)
puts(".empty? function")
puts([1,2,3].empty?)
puts([].empty?)


#pushing & popping --> LIFO. Last in, first out
#array treated like a STACK
#push or << adds to end of an array
#pop removes and returns last element of an array 

puts("array as a stack")
puts("push and append operator")
arr=[]
arr.push(1)
puts(arr[0])
arr << 2
puts(arr)

puts("reverse polish calculator")
nums = []
nums << 1
nums << 2
nums << 3
#nums=[1,2,3]

nums << (nums.pop) + (nums.pop)
#removes and returns 3, removes and returns 2 adds them: 5
puts(nums) #array is now [1,5]
nums << (nums.pop) * (nums.pop) #removes 5 and removes 1, multiplies them
puts(nums) #array is now[5*1=5]

#array treated as a QUEUE
#FIFO, first in first out
puts("array as a queue")
arr=[0,1,2,3]
arr.delete_at(0) #removes 1st element of the array
puts(arr)

#shift & unshift: opposite of push and pop
#shift removes and returns first element of array
#unshift pushes a new element into front of array and returns modified array

nums=[1,2,3,4]
x=nums.shift
puts("first element of array that we removed was #{x} ")
puts("new array after shift")
puts(nums)

#say you like (in 1 sentence) all of the elements of cool_things array
puts("Things I like include #{cool_things.join(", ")}.")

#finding elements
#to access in order: arr.each
#to access by position: arr[i]
#to access first element: arr.first
#to access last: arr.last

#check if array [1,2,3,4] has entry 0
puts([1,2,3,4].include?(0))
puts("return index of 3 in array [1,2,3,4]")
puts([1,2,3,4].index(3))

#shuffle returns array with elements in random order
puts([1,2,3].shuffle)
x=[1,2,3,4,5]
x=x.shuffle
puts(x)

die=[1,2,3,4,5,6]
puts("the first element of the die is #{die.first}")
puts("the last element of the die is #{die.last}")
puts("first roll gives us #{die.sample}")
puts("the next roll gives us #{die.sample}")

animals = [
  {:name => "Gizmo", :species => "cat"},
  {:name => "Maurice", :species => "fish"}
]


#PRACTICE EXERCISES 

#write method that takes as input array of numbers and returns an array
#with no duplicate entries in the array

def my_uniq(nums) 
    nums_uniq=[]
    nums.each do |number|
        if !(nums_uniq.include?(number))
            nums_uniq.push(number)
        end
    end
    return nums_uniq
    #
end

arr=[1,3,1,2,2]
puts(my_uniq(arr))


#Two sum: Write a method that finds if an array of numbers has a pair that sums to zero. 
#Be careful of the case of zero; there need to be two zeroes in the array to make a pair that sums to zero.

def two_sum(nums)
    i=0
    while i<nums.count-1
        j=1
        while j<nums.count
            if(nums[i]+nums[j]==0)
                return true;
            end
            j=j+1
        end
        i=i+1
    end
    return false
end

puts(two_sum([1,2,3,-1]))
puts(two_sum([-5,5]))
puts(two_sum([0,0]))
puts(two_sum([0,1,0]))
puts(two_sum([1,2,3]))


# the other practice questions for arrays have their own files
# matrices.rb and tower_game.rb

