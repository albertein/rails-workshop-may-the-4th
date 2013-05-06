class Test
  attr_accessor :name, :age

  def initialize(name)
    @name = name
    puts "init #{name}"
  end
  
  def hi(name = nil)
    name ||= @name
    puts "Hi #{name}!"
  end

  def to_s
    "#{name} de #{age}"
  end

  def method_missing(method)
    puts "Fancy #{method}"    
  end
end



