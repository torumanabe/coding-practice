primeNumbers = []
(1..1000).each do |i| #1から1000までの配列を用意してeach文で回す
  next if i == 1   # 1の場合はとばす

  if i == 2        #2のときはiを追加して次の数字に進む（２も素数、）
    primeNumbers.push(i)
    next
  end

  judge = true
  primeNumbers.each do |number| #下の処理をprimeNumbersそれぞれにしてやる。
      if i % number == 0  #その数で割り切れたらfalseと判定してbreak
        judge = false
        break
      end
  end

  primeNumbers.push(i) if judge #judgeがtrueなら数字(i)を返す

end
puts primeNumbers #選別を潜った数字だけ出力