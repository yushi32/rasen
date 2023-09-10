n = gets.to_i
maxv = -2000000000 # 十分小さい値
minv = gets.to_i

(n - 1).times do |i|
  r = gets.to_i
  maxv = [maxv, r - minv].max
  minv = [minv, r].min
end

puts maxv

# 為替の初期値を3行目でminvに保持して、後ろの値との差を計算する
# 利益の最大値をmaxv, 為替の最小値minvに保持
# ループの度にmaxvを計算するので、配列が不要になっている

# 本の解答では、配列R[Max]に入力値を格納してから、
# minvにR[0]を代入して、ループの中でR[i]を呼び出している
