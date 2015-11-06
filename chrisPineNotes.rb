puts("hi")
#puts(gets)
#puts("whats your name?")
#name=gets.chomp
#puts('Did you know there are ' + name.length.to_s + ' characters in ' + name + '?')
lineWidth=50
puts('Sanam'.center(lineWidth))
puts('Joon'.ljust(lineWidth))
puts('Aghdaey'.rjust(lineWidth))

puts("What do you want?")
request=gets.chomp
puts('WHADDYA MEAN, YOU WANT ' + "\"" + request.upcase + "\"" + "!?") 

#make table of contents now

lineWidth=60
puts("Table of Contents".center(lineWidth))
puts('Chapter 1: Numbers'.ljust(lineWidth/2) + 'page 1'.rjust(lineWidth/2))
puts('Chapter 2: Letters'.ljust(lineWidth/2) + 'page 72'.rjust(lineWidth/2))
puts('Chapter 3: Variables'.ljust(lineWidth/2) + 'page 118'.rjust(lineWidth/2))

srand 1776
puts(rand(100))
puts(rand(100))
puts("check if this works")
srand 1776
puts(rand(100))
puts(rand(100))

a =true
b =false
puts(a && b)
puts(a || b)

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'

#puts([1,2,3].reverse)
x=[1,2,3].reverse
puts(x[0])
puts([1,2,3,4].length)
foods=["artichoke", "brioche", "caramel"]
puts(foods.to_s)
puts(foods.join(","))

def sayMoo(x)
    x.times do
        puts("Moo")
    end
end

sayMoo(5)