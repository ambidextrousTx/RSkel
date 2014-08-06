class Java
  def initialize(classname, returntype, methodname)
    @classname = classname.chomp
    @returntype = returntype.chomp
    @methodname = methodname.chomp
  end

  def generate

    puts
    puts 'import *.*'
    puts
    puts "class #{@classname} {"
    puts "  private #{@returntype} #{@methodname}(arguments) {"
    puts '    // Do something'
    puts '}'
    puts '  public static void main(String[] args) {'
    puts '    // Do something'
    puts '}'
  end
end

