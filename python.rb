class Python
  def initialize(classname, methodnames)
    @classname = classname.chomp
    @methodnames = methodnames
  end

  def generate
    puts
    puts 'import *.*'
    puts
    puts "class #{@classname}(object):"
    puts "  def __init__(self, args):"
    puts "    # Do something"
    @methodnames.each do |methodname|
      puts
      puts "  def #{methodname}(self, args):"
      puts '    # Do something'
    end
    puts
    puts 'if __name__ == "__main__"'
    puts '    # Do something'
    puts
  end
end
