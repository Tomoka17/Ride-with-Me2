class Touring < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather

  with_options presence: true do
    validates :image
    validates :title, length: {maximum: 40}
    validates :weather_id, numericality: { only_integer: true, message: "can't be blank" }
    validates :mileage, numericality: { only_integer: true }
    validates :recording, length: {maximum: 1000}
    validates :user
  end
  

end
