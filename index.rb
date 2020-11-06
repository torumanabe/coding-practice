primeNumbers = []
(1..1000).each do |i| #1から1000までの配列を用意してeach文で回す
  next if i == 1   # 1の場合はとばす

  if i == 2        #2の場合は
    primeNumbers.push(i)
    next
  end

  judge = true
  primeNumbers.each do |number|
      if i % number == 0  #その数で割り切れなかったらfalseと判定してbreak
        judge = false
        break
      end
  end

  primeNumbers.push(i) if judge #judgeがtrueなら数字(i)を返す

end
puts primeNumbers