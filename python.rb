class Python
  def initialize
  end

  def generate
    puts 'import'
    puts 'class my_class(object):'
    puts '    def __init__(self):'
    puts '        pass'
    puts '    def another_method(self, args):'
    puts '        pass'
    puts 'if __name__ == "__main__":'
  end
end

