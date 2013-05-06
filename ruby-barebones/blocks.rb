class Numerotron5000
  attr_accessor :a, :b
  def initialize(a, b)
    @a = a
    @b = b
  end

  def exec
    yield @a, @b    
  end
end

n = Numerotron5000.new 10, 5
c = 5
res = n.exec do |paco, pancho|
  c = paco * pancho * c
  return c
end
puts c
puts res
res = n.exec { |a, b| a + b }
puts res

p = Proc.new { |a, b| a + b}
puts p.call 5, 3




