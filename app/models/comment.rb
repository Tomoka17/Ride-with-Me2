class Comment < ApplicationRecord
  belongs_to :touring
  belongs_to :user

  with_options presence: true do
    validates :text,length: {maximum: 1000}
    validates :user
    validates :touring
end
