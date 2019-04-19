=begin
to_hex(0,0,0) => '#000000'
to_ints('#000000') => [0,0,0]
=end

def convert_hash_syntax(old)
  old.gsub(/:(\w+) *=> */, '\1: ')
end