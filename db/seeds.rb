# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

junres = %w(立ち飲み 焼き鳥・焼きとん 餃子 うどん そば 和定食 丼もの 寿司 ラーメン 中華 アジア・エスニック カレー 洋食 肉料理 カフェ・スイーツ ピザ バーガー・ファストフード ファミレス メイド・萌え系 コンビニイートイン スーパーイートイン フードコート 屋台 居酒屋 バー その他)

junres.each do |junre|
  Junre.create(name: junre)
end