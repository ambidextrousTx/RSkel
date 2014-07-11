require_relative 'python'
require_relative 'java'
require_relative 'cpp'
require_relative 'ruby'

language = gets.chomp.downcase
supported = ['ruby', 'java', 'python', 'c++']

puts 'Supported' if supported.include? language

Python.new.generate if language.eql? 'python'
Java.new.generate if language.eql? 'java'
CPP.new.generate if language.eql? 'c++'
Ruby.new.generate if language.eql? 'ruby'
