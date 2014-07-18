class Ruby
  def initialize(classname, methodname)
    @classname = classname.chomp
    @methodname = methodname.chomp
  end

  def generate
    puts
    puts 'require *'
    puts
    puts "class #{@classname}"
    puts "  def initialize(args)"
    puts "    # Do something"
    puts "  end"
    puts
    puts "  def #{@methodname}(self, args)"
    puts '    # Do something'
    puts "  end"
    puts "end"
    puts
    puts "myvar = #{@classname}.new"
    puts
  end
end

