class Personality < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ガンガンいこうぜ' },
    { id: 2, name: 'いろいろやろうぜ' },
    { id: 3, name: 'みんなでなかよく' },
    { id: 4, name: 'おれにまかせろ' },
    { id: 5, name: 'アシストまかせろ' },
    { id: 6, name: 'いのちをだいじに' },
    { id: 7, name: 'ガソリンせつやく' }
  ]

  include ActiveHash::Associations
  has_many :users
  end