class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '16~20歳' },
    { id: 2, name: '20~25歳' },
    { id: 3, name: '26~30歳' },
    { id: 4, name: '31~35歳' },
    { id: 5, name: '36~40歳' },
    { id: 6, name: '41~45歳' },
    { id: 7, name: '46~50歳' },
    { id: 8, name: '51~60歳' },
    { id: 9, name: '61~70歳' },
  ]
  include ActiveHash::Associations
  has_many :users
  end