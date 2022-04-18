class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ネイキッド' },
    { id: 2, name: 'クラシック' },
    { id: 3, name: 'ツアラー' },
    { id: 4, name: 'スーパースポーツ' },
    { id: 5, name: 'クルーザー' },
    { id: 6, name: 'トレイル' },
    { id: 7, name: 'モタード' },
    { id: 8, name: 'アドベンチャー' },
    { id: 9, name: 'ビックスクーター' },
    { id: 10, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :users
  end