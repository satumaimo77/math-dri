class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1年' },
    { id: 3, name: '2年' },
    { id: 4, name: '3年' },
    { id: 5, name: 'その他' }
  ]
end