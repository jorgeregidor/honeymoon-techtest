class Destination < ApplicationRecord
  has_many :ratings
  validates :name, :price, presence: true

  def to_h
    {
      name: name,
      description: description,
      price: price
    }
  end

  def average_rating
  	self.ratings.average(:score)
  end
end
