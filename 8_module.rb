module Loggable
  def log(text)
    p "log #{text}"
  end
end

class Product
  extend Loggable

  def Product.create_products(name)
    log 'create product is called.'
  end
end

Product.create_products([])