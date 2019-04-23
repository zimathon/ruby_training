# block
a = [1,2,3,4,5]
sum = 0
a.each do |n|
  sum += n
end

p sum

# map
b = [1,2,3,4,5]
c = b.map{ |n| n * 10}
p c

# select(find_all)
d = [1,2,3,4,5]
ds = d.select{ |n| n.even? }
p ds

# find
# blockの戻り値が真になった最初の要素
f = [1,2,3,4,5]
ff = f.find{ |n| n.even? }
p ff

# inject
i = [1,2,3,4,5]
ii = i.inject(5){ |result,n| result + n}
p ii

# range
p (1..5).class
# 1<=p<=5
r = 1..5
p r.include?(5)
# 1<=p<5
r2 = 1...5
p r2.include?(5)