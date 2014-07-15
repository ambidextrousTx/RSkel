require_relative 'python'
require_relative 'java'
require_relative 'cpp'
require_relative 'ruby'

language = gets.chomp.downcase
supported = ['ruby', 'java', 'python', 'c++']

if supported.include? language
  puts 'Supported' 
  if language.eql? 'java'
    puts 'Enter the name of the main class:'
    classname = gets
    puts 'Enter the return type of a method:'
    returntype = gets
    puts 'Enter the name of the method above:'
    methodname = gets
    java = Java.new(classname, returntype, methodname)
    puts 'Here is the generated stub:'
    java.generate
  end
end

Python.new.generate if language.eql? 'python'
CPP.new.generate if language.eql? 'c++'
Ruby.new.generate if language.eql? 'ruby'
