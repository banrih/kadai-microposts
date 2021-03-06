class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :post, class_name: "Micropost"
  
  validates :user_id, presence: true
  validates :post_id, presence: true
end
