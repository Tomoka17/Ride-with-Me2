class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ネイキッド' },
    { id: 2, name: 'クラシック' },
    { id: 3, name: 'アメリカン' },
    { id: 4, name: 'ツアラー' },
    { id: 5, name: 'スーパースポーツ' },
    { id: 6, name: 'クルーザー' },
    { id: 7, name: 'トレイル' },
    { id: 8, name: 'モタード' },
    { id: 9, name: 'アドベンチャー' },
    { id: 10, name: 'ビックスクーター' },
    { id: 11, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :users
  end