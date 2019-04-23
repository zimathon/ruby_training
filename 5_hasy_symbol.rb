# hash
currencies = {'japan' => 'yen','us' => 'dollar','indi' => 'rupee',}
p currencies['japan']

currencies.each do |key,value|
  p "#{key}, #{value}"
end