ruby
ruby on rails 
HTML/CSS
javascript

input = gets
puts input

input = gets.to_i
puts input * 7

#input_lines = 2という１行目のデータが入る
input_lines = gets.to_i

#実際は 2.timesになっている
input_lines.times {
#sに２と５を配列で格納する(splitで,を消して分ける)
  s = gets.chomp.split(",")
  #s[0]には2,s[1]には5が入っているわけである
  print "hello = ",s[0]," , world = ",s[1],"\n"
}


>> 3.times { puts "Betelgeuse!" }   # 3.timesではブロックに変数を使っていない
"Betelgeuse!"
"Betelgeuse!"
"Betelgeuse!"
=> 3
>> (1..5).map { |i| i**2 }          # 「**」記法は冪乗 (べき乗)
=> [1, 4, 9, 16, 25]
>> %w[a b c]                        # %w で文字列の配列を作成
=> ["a", "b", "c"]
>> %w[a b c].map { |char| char.upcase }
=> ["A", "B", "C"]
>> %w[A B C].map { |char| char.downcase }
=> ["a", "b", "c"]



getsメソッド： 入力を一行ごとに「文字列」で受け取る。
chompメソッド： 文字列の改行を取り除く。
to_iメソッド： 「文字列」を「数」に変換する。
splitメソッド： 文字列を分割し、配列に格納する。

printメソッド
putsメソッド

input_1 = gets
input_2 = gets
input_3 = gets

list = [input_1,input_2,input_3]
puts list


#標準入力
input_line = gets.to_i
input_line.times do
  s = gets.chomp.split(" ")
  print "hello = #{ s[0] } , world = #{ s[1] }\n"
end




・lengthメソッド（文字列）
文字列の文字数を数えるメソッド。その際、半角スペースも文字数として数えられる。

・to_sメソッド
数値を文字列に変換するメソッド。

・to_iメソッド
文字列を数値に変換するメソッド。

・putsメソッド
ターミナルに値を出力するメソッド。putsの後に値を記述することで出力できる。

・getsメソッド
ターミナルに値の入力機能を起動するメソッド。入力された値は文字列としてプログラムに渡される。
・chompメソッド
文字列の末尾に存在する改行を取り除くメソッド。
・lengthメソッド（配列）
配列の要素数を数えるメソッド。数は1から数える。出力する際は数値として出力される。
・requireメソッド
外部ファイルを読み込むためのメソッド。require "外部ファイル名"で読み込める。ただしカレントディレクトリから読み込む場合はrequire "./外部ファイル名"で読み込む。
・digメソッド
ネストしたハッシュから安全に値を取り出すことができるメソッド。
・Dateクラス
Rubyの標準ライブラリの機能で日付を扱うためのクラスのこと。
・todayメソッド
本日の日付を取得するメソッド。
・wdayメソッド
0～6の数値で曜日を取得するメソッド。0:日曜日、1:月曜日、2:火曜日、3:水曜日、4:木曜日、5:金曜日、6:土曜日を表す。
・strftimeメソッド
日時データを指定したフォーマットで文字列に変換するメソッド
・each_with_indexメソッド
要素の繰り返し処理と同時に、その要素が何番目に処理されたかを表すメソッド。処理番号は0から割り当てられる。
・include?メソッド
指定した要素が配列や文字列内に含まれているかを判定するメソッド。
・sliceメソッド
配列や文字列から指定した要素を取り出すことができるメソッド。文字列の要素を指定する際は数字を用い、先頭の文字列は0から指定する。また第二引数として、取り出す要素の数も指定したい場合は指定することもできる。
・エクスクラメーションマーク(!)
末尾につけることにより破壊的メソッドになり、もとの配列や文字列を変化させるメソッド。
・scanメソッド
対象の要素から引数で指定した文字列を数え配列として返すメソッド。
・indexメソッド
文字列や配列の中に指定した文字列が含まれていた場合、その文字列の開始位置を0から数えた整数で返すメソッド。
・even?メソッド
対象の数値が偶数かどうかを真偽値で判断するメソッド。
・floorメソッド
数値の小数点以下を切ってより小さい方の整数にするメソッド。
・whileメソッド
指定した条件式がtrueの間、ずっと繰り返し処理を行うメソッド。while 条件式 do〜endの間に繰り返したい処理を記述する。
・downcaseメソッド
文字列に含まれる大文字を小文字に変換するメソッド。
・downcaseメソッド
文字列に含まれる大文字を小文字に変換するメソッド。
・absメソッド
数値の絶対値を取得するメソッド。
・absメソッド
数値の絶対値を取得するメソッド。
・countメソッド
特定の文字列の中に指定した文字列がいくつ含まれているかを数えたり、配列の要素数を数えるメソッド。
・countメソッド
特定の文字列の中に指定した文字列がいくつ含まれているかを数えたり、配列の要素数を数えるメソッド。
・errorsメソッド
データを保存しようとした時に失敗するとエラーメッセージが格納されるメソッド。
・errorsメソッド
データを保存しようとした時に失敗するとエラーメッセージが格納されるメソッド。
・any?メソッド
どれか1つでも条件を満たすのであればtrueを返し、全て条件を満たさないのであればfalseを返すメソッド。
・full_messagesメソッド
 エラーメッセージ全体の内容を取得するメソッド。errors.full_messagesとして使用する。またエラーメッセージを取得する際はeachメソッドを使用する。
 ・firstメソッド
配列から最初の要素を取得するメソッド。
・lastメソッド
配列から最後の要素を取得するメソッド。
・lastメソッド
配列から最後の要素を取得するメソッド。
・sortメソッド
配列の要素を一定の規則で並び替えるメソッド。
・image_tagメソッド
画像を表示させるためのメソッド。
・truncateメソッド
長いテキストを省略して表示することができるメソッド。





