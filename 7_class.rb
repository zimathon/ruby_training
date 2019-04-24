class Foo
  p "クラス構文直下のself:  #{self}"

  def bar
    p "クラスメソッド内のself: #{self}"
  end
  def self.bar
    p "クラスメソッド内のself: #{self}"
  end
end

# Foo.new.bar
# Foo.bar
# p Foo.new.methods.sort

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  private

  def self.hello()
    'Hello'
  end
end

dvd = DVD.new('name', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p DVD.hello