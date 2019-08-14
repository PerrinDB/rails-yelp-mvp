class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5], message: "Must be between 1 and 5" }
end
