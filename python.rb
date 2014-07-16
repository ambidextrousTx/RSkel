class Python
  def initialize(classname, methodname)
    @classname = classname.chomp
    @methodname = methodname.chomp
  end

  def generate
    puts
    puts 'import *.*'
    puts
    puts "class #{@classname}(object):"
    puts "  def __init__(self, args):"
    puts "    # Do something"
    puts
    puts "  def #{@methodname}(self, args):"
    puts '    # Do something'
    puts
    puts 'if __name__ == "__main__"'
    puts '    # Do something'
    puts
  end
end
