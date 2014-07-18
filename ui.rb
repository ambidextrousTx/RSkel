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
  if language.eql? 'python'
    puts 'Enter the name of the main class:'
    classname = gets
    puts 'Enter the name of a method:'
    methodname = gets
    python = Python.new(classname, methodname)
    puts 'Here is the generated stub:'
    python.generate
  end
  if language.eql? 'ruby'
    puts 'Enter the name of the main class:'
    classname = gets
    puts 'Enter the name of a method:'
    methodname = gets
    ruby = Ruby.new(classname, methodname)
    puts 'Here is the generated stub:'
    ruby.generate
  end
  if language.eql? 'c++'
    puts 'Enter the name of the main class:'
    classname = gets
    puts 'Enter the return type of a method:'
    returntype = gets
    puts 'Enter the name of the method above:'
    methodname = gets
    cpp = CPP.new(classname, returntype, methodname)
    puts 'Here is the generated stub:'
    cpp.generate
  end
end
