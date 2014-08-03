require_relative 'python'
require_relative 'java'
require_relative 'cpp'
require_relative 'ruby'
require_relative 'utils'
require_relative 'language_helpers'

puts 'Which language do you want the stubs for?'
language_name = gets.chomp
language = language_name.downcase
supported = ['ruby', 'java', 'python', 'c++']

if supported.include? language
  puts "Ok, #{language_name} supported ..."
  if language.eql? 'java'
    process_java
  end
  if language.eql? 'python'
    process_python
  end
  if language.eql? 'ruby'
    process_ruby
  end
  if language.eql? 'c++'
    process_cpp
  end
end
