=begin
to_hex(0,0,0) => '#000000'
to_ints('#000000') => [0,0,0]
=end

def to_hex(r, g, b)
    # '#' + sprintf("%02x",r) + sprintf("%02x",g) + sprintf("%02x",b)
    # hex = '#'
    # [r,g,b].each {|n| hex += n.to_s(16).rjust(2,'0')}
    # hex
    [r,g,b].inject('#'){ |hex,n| hex + n.to_s(16).rjust(2,'0')}
end
def to_ints(v)
  v[0] = ""
  vs = v.scan(/.{1,#{2}}/)
  vs.map{ |n| n.to_i(16)}
end

p to_hex(1,2,3)
p to_hex(255,255,255)
p to_ints('#ffffff')
p "ff".to_i(16)