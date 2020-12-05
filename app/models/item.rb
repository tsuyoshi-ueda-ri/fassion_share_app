class Item < ApplicationRecord
  validates :memo, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Item.where('memo LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
