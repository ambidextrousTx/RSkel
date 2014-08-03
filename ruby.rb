class Ruby
  def initialize(classname, methodnames)
    @classname = classname.chomp
    @methodnames = methodnames
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
    @methodnames.each do |methodname|
      puts "  def #{methodname}(args)"
      puts '    # Do something'
      puts "  end"
    end
    puts "end"
    puts
    puts "myvar = #{@classname}.new"
    puts
  end
end

