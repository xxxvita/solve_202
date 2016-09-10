# Основной скрипт решения.

surf = 12017639147
row = (surf + 3)/2
offset = 3 - (row %3)

col = offset
row -= offset


total = 0
while row > col
  if row.gcd(col) == 1
      total += 1
  end

  row -= 3
  col += 3
end

p total * 2