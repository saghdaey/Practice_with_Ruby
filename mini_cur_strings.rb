
# APP ACADEMY MINI CURRICULUM NOTES

# Part II: Strings

string_1="these are some words"
puts('letters'=="letters")
puts('"Yesterday"')

# \n : escape character (can use to print on multiple lines)
# to print double quotes (within double quotes): "\pigs\" 

stomach_contents="Bacon 'ipsum dolor' sit amet venison\nBeef kielbasa leberkas, shank t-bone doner strip \"steak\""
puts(stomach_contents)
puts("\"pigs\"")
puts("\"Pigs\" is double quoted, and this is a backslash \\")

# string interpoloation 
# place ruby code inside #{} within a string bounded by double quotes only

worst_day="Monday"
puts("#{worst_day}s are the hardest.")

# concatenating and appending to strings (like << and + in arrays)

likes="race cars, lasers, aeroplanes"
dislikes="harmonicas"

joint_string="I like " + likes + ". I don't like " + dislikes + "."
puts(joint_string)

puts("using +")
count_in=""
count_in=count_in+"One, "
count_in=count_in+"two, "
puts(count_in)

# using shovel operator << (preferred)
puts("<< operator")
count_in=""
count_in << "One, "
count_in << "two, "
puts(count_in)

# accessing a substring - similar to accessing subarrays of an arrays
puts("lets print a subarray of 'this is my sentence' from index 5 to 6.")
subarray="this is my sentence"[5..6]
puts(subarray)

# to count number characters in a string use length method
x="words words words".length
puts(x)

# PRY: alternative to standard IRB shell for Ruby
# how to use: 

# terminal commands: 1) gem install pry, 2) pry
# what comes up then in terminal is this: [1] pry(main) >
# now after > you can type any ruby command
# it will be executed and we will be told what is returned as wel

# [1] pry(main)> motto="we all scream for ice cream"
# => "we all scream for ice cream"
# [2] pry(main)> moto.split(" ")
# =>  ["we", "all", "scream", "for", "ice", "cream"]
# [4] pry(main)> nil.to_s
# => ""
# [5] pry(main)>puts("Hi Sanam")
# Hi Sanam
# => nil

# other String Methods to know

# chomp (covered already) - removes escape character

# downcase - returns a copy of str in lower case
# upcase - returns a copy of str in upper case

# strip: returns a copy of str with leading and trailing whitespace removed.
name="sanam"
puts(name.chomp)
s="    s"
puts(s) #prints: "     s"
puts(s.strip) #prints: "s"
puts(s) #prints: "s"

name="SaNaM"
puts(name.downcase) #prints sanam
puts(name) #prints SaNaM

# gsub: returns a copy of str with all occurrences of pattern substituted for the second argument.
# example, if replacement is a String it will be substituted for the matched text 

practice="sasasasa"
puts(practice.gsub("sa","1")) #prints 1111 since each 'sa' is replaced by 1 in the copy

# to_i assumes to_i(10) for base 10
# returns the result of interpreting leading characters in str as an integer 

"99".to_i # returns 99
"99 red balloons".to_i # returns 99
"red".to_i # returns 0
# extraneous characters past the end of a valid number are ignored. 
# if there is not a valid number at the start of str, 0 is returned.

# to_sym: returns the Symbol corresponding to str, creating the symbol if it did not previously exist
s='cat'
puts(s==:cat) # prints false
s='cat'.to_sym # creates symbol for cat
puts(s==:cat) # prints true

# *
# str * integer → new_str click to toggle source
# Copy—Returns a new String containing integer copies of the receiver.
name="Sanam!"
sanamRepeated=name*3
puts(sanamRepeated) # prints Sanam!Sanam!Sanam!


age0=6 #0 for 10**0s digit
age1=1 #1 for 10**1s digit 
str="#{age1}#{age0}"
puts(str) #prints 16