#2.4 数値
# 整数同士の割り算は整数に
p 1/2

# 小数点
p 1.0/2

# 数値の増減
n = 1

# ++ は無いので += を利用する
p n += 1

# 数値と文字列の暗黙変換は無し
# p 1 + '10' => error
p 1 + '10'.to_i
p 1 + '10.5'.to_f

# nil, false が偽
if data
  'data exist'    
else
  'data nothin'    
end