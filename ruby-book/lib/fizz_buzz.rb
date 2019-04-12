def fizzbuzz(number)
  if (number % 15 ==0)
    'fizzbuzz'
  elsif (number % 5 == 0)
    'buzz'
  elsif (number % 3 == 0)
    'fizz'
  else
    number.to_s
  end
end

p fizzbuzz(3)
p fizzbuzz(5)
p fizzbuzz(15)
p fizzbuzz(1)