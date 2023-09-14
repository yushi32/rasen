array = [5, 6, 4, 2, 1, 3]

def selectionSort(array)
  size = array.size
  inversion_count = 0

  # 未整列部分の先頭を指すループ
  (size - 1).times do |i|
    min_index = i

    # 未整列部分の最小値のインデックス番号を求める
    ((i + 1)...size).each do |j|
      if array[j] < array[min_index]
        min_index = j
      end
    end

    # 値の交換と転倒回数を求める
    if i != min_index
      array[i], array[min_index] = array[min_index], array[i]
      inversion_count += 1
    end
  end
    
  puts array.join(' ')
  puts inversion_count
end

selectionSort(array)
