class Java
  def initialize
  end

  def generate
    stub = File.open('java.txt').read
    puts stub
  end
end

