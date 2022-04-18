class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '快晴' },
    { id: 2, name: '晴' },
    { id: 3, name: '曇' },
    { id: 4, name: '小雨' },
    { id: 5, name: '雨' },
    { id: 6, name: '霧' },
    { id: 7, name: '雪' }
  ]

  include ActiveHash::Associations
  has_many :tourings
  end