require_relative 'python'

language = gets.chomp.downcase
supported = ['ruby', 'java', 'python', 'c++']

puts 'Supported' if supported.include? language

Python.new.generate if language.eql? 'python'
