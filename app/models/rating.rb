class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :destination

  validates_uniqueness_of :user_id, scope: :destination_id
  validates :score, presence: true
  validates_inclusion_of :score, :in => 1..5
end
