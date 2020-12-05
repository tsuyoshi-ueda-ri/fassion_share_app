class Item < ApplicationRecord
  validates :memo, presence: true
  belongs_to :user
  has_many :comments
end
