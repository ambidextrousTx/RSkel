def process_java
  puts 'Enter the name of the main class:'
  classname = gets
  puts 'Enter the return type of a method:'
  returntype = gets
  until valid_datatype(returntype) == true
    puts 'Enter the return type of a method:'
    returntype = gets
  end
  puts 'Enter the name of the method above:'
  methodname = gets
  until valid_name?(methodname)
    puts 'Enter the name of the method above:'
    methodname = gets
  end
  java = Java.new(classname, returntype, methodname)
  puts 'Here is the generated stub:'
  java.generate
end

def process_python
  puts 'Enter the name of the main class:'
  classname = gets
  puts 'Enter a comma-separated list of method names:'
  methodnames = gets.split(',')
  methodnames_final = []
  methodnames.each do |methodname|
    methodname = methodname.strip()
    if valid_name?(methodname)
      methodnames_final.push(methodname)
    end
  end
  python = Python.new(classname, methodnames_final)
  puts 'Here is the generated stub:'
  python.generate
end

def process_ruby
  puts 'Enter the name of the main class:'
  classname = gets
  puts 'Enter the name of a method:'
  methodname = gets
  until valid_name?(methodname)
    puts 'Enter the name of a method:'
    methodname = gets
  end
  ruby = Ruby.new(classname, methodname)
  puts 'Here is the generated stub:'
  ruby.generate
end

def process_cpp
  puts 'Enter the name of the main class:'
  classname = gets
  puts 'Enter the return type of a method:'
  returntype = gets
  until valid_datatype(returntype) == true
    puts 'Enter the return type of a method:'
    returntype = gets
  end
  puts 'Enter the name of the method above:'
  methodname = gets
  cpp = CPP.new(classname, returntype, methodname)
  puts 'Here is the generated stub:'
  cpp.generate
end
