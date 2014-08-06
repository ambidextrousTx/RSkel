class CPP
  def initialize(classname, returntype, methodname)
    @classname = classname.chomp
    @returntype = returntype.chomp
    @methodname = methodname.chomp
  end

  def generate
    puts
    puts '#include<>'
    puts
    puts "class #{@classname} {"
    puts '  public:'
    puts "  #{@returntype} #{@methodname}(arguments) {"
    puts '    // Do something'
    puts '}'
    puts
    puts 'int main(void) {'
    puts '  // Do something'
    puts '  return 0;'
    puts '}'
  end
end

