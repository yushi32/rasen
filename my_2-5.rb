time_count = gets.to_i
min = 200,000
# 最小値を更新した時点より、後ろの入力値を保持する配列
follow_by_mins = Array.new

time_count.times do |t|
  tmp = gets.to_i
  follow_by_mins.push(tmp)
  # 最後の値で最小値を更新すると、取引が行われないことになるので除外する
  if min > tmp && t != time_count - 1
    min = tmp
    # 最小値を更新したら、それ以前の値は破棄する
    follow_by_mins.clear
  end
end

puts follow_by_mins.max - min
