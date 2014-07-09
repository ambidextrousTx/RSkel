class Python
  def initialize
  end

  def generate
    stub = File.open('python.txt').read
    puts stub
  end
end

