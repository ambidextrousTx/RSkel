language = gets.chomp.downcase
supported = ['ruby', 'java', 'python', 'c++']

puts 'Supported' if supported.include? language
