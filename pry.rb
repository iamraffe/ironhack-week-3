print "[0]> "
counter = 0
input = gets.chomp
while input != 'exit!'
	puts "=> #{eval input}"
	counter+=1
	print "[#{counter}]> "
	input = gets.chomp
end