p 'Text?: '
text = gets.chomp

begin

  p 'Pattern?: '
  pattern = gets.chomp
  
  regexp = Regexp.new(pattern)

rescue RegexpError => e
  p "Invalid pattern: #{pattern}"
  retry
end

  matches = text.scan(regexp)
if matches.size > 0
  p "Matched: #{matches.join(', ')}"
else
  p "Nothing matched."
end