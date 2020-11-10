primeNumbers = []     #primenumbersは配列です、そのへんよろ。
(1..1000).each do |i| #今回は1から1000までの配列を用意してeach文で回す、i はループ処理する為の変数
  next if i == 1      #1は素数でないのでとばす、もしくは配列を2から始めるとかもあり。

  if i == 2           # 2は素数なので引数にi=2を渡して次の数字に進む
    primeNumbers.push(i)
    next
  end

  judge = true                  #trueなら素数です。
  primeNumbers.each do |number| #下の処理をprimeNumbers内の数字(number)それぞれにしてやる。
      if i % number == 0  #primeNumbersのある１つの数字の中の小さな数で割り切れたらfalseと判定して上のeach文を抜ける。
        judge = false     #その配列（primeNumbersのある１つの数字）のなかの数で割り切れたのでnumberは素数でない
        break             #素数と分かればループを抜ける
      end
  end

  primeNumbers.push(i) if judge #judgeがtrueなら数字(i)を返す

end

puts primeNumbers #選別を潜った数字だけ出力


#問題１：以下の関数を作成してください。
#概要：1から9までの数字が記載されているカードを順番に全て配るプログラム
#第一引数：カードを配る人数
#第二引数：文字列をデータ型とするカードの中身
#返り値：要素が文字列の配列とする配られたカードの結果
#第一引数が「2」、第二引数が「12345」の場合の実行結果：{‘135’, ‘24’}


def supply_card(count, contents)
	contents_1 = contents.each_slice(2).map(&:first).to_s
  contents_2 = contents.each_slice(2).map(&:last).to_s

 	return contents_1, contents_2
end

puts supply_card(2, “12345”)


#問題２：以下の関数を作成してください。
#概要：文字列の中で最も連続する文字を判定するプログラム
#引数：文字列
#返り値：最も連続する文字を要素とする配列
#引数が「aabbcccあdいeう」の場合の実行結果：{‘c’}

def repeat(text)
	count = 1
   	 max_word =

        for word in text(1,len(text))
            if text[i] == text[i-1]
                count+=1

              if count > max
                    max = cnt
            	else:
               return max_word
end

put repeat(“aabbcccあdいeう”)