print "[0]>"
counter = 0
input = gets.chomp
while input != 'exit!'
	puts "=> #{eval input}"
	counter+=1
	puts "[#{counter}]>"
	input = gets.chomp
end