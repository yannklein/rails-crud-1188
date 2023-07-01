class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :rating, inclusion: {in: 0..5}
end
