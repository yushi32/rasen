array = [5, 3, 2, 4, 1]

def bubbleSort(array)
  length = array.length
  inversion_count = 0 # 転倒数を数える、number of swapsなどとも言う

  length.times do |i| # 開始位置を特定
    
    (length - (i + 1)).times do |j| # 隣り合う2つを比較
      if array[j + 1] < array[j]
        tmp = array[j + 1]
        array[j + 1] = array[j]
        array[j] = tmp
        inversion_count += 1
      end
    end
    
  end
  puts array.join(' ')
  puts inversion_count
end

bubbleSort(array)
