class Ruby
  def initialize
  end

  def generate
    stub = File.open('ruby.txt').read
    puts stub
  end
end

