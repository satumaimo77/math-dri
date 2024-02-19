class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '正負の数' },
    { id: 3, name: '文字と式' },
    { id: 4, name: '方程式' },
    { id: 5, name: '比例と反比例' },
    { id: 6, name: '平面図形' },
    { id: 7, name: '空間図形' },
    { id: 8, name: '資料の分析と活用' },
    { id: 9, name: '式の計算' },
    { id: 10, name: '連立方程式' },
    { id: 11, name: '１次関数' },
    { id: 12, name: '平行と合同' },
    { id: 13, name: '三角形と四角形' },
    { id: 14, name: '確率' },
    { id: 15, name: '多項式' },
    { id: 16, name: '平方根' },
    { id: 17, name: '２次方程式' },
    { id: 18, name: '２乗に比例する関数' },
    { id: 19, name: '相似な図形' },
    { id: 20, name: '円' },
    { id: 21, name: '三平方の定理' },
    { id: 22, name: '標本調査' },
    { id: 23, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end