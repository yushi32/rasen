array = [5, 2, 4, 6, 1, 3]

def trace(array)
  puts array.join(' ')
end

def insertionSort(array)
  length = array.length
  
  (1..(length - 1)).each do |i|
    v = array[i]
    j = i - 1
      
    while j >= 0
      if v < array[j]
        array[j + 1] = array[j]
        array[j] = v
      end
      j -= 1
    end
      
    trace(array)
  end
end

trace(array)
insertionSort(array)

# 配列を半角スペース区切りで出力するtraceメソッド
# 挿入ソートを実行するinsertionSortメソッド

# 外側のループ（i）はarrayのインデックス1から最後までを扱う
# 変数vに操作したい要素を保持する
# 内側のループ（j）は、vで保持している要素より手前にある要素を扱う
# while句の中で、操作している値vと手間にある要素array[j]を比較
# vの方が小さかったら、array[j]とv（array[j + 1])の位置を入れ替える
