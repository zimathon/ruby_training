# scan
p '123 456 789'.scan(/(?:\d+)/)

#  キャプチャ
text = '誕生日は1977年7月17日です'

p text[/(\d+)年(\d+)月(\d+)日/]
p text[/(\d+)年(\d+)月(\d+)日/, 3]

#  名前付きキャプチャ
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,  :day]

# split
p '123,456 789'.split(',')

# gsub
p text.gsub(/(\d+)年/,"test")