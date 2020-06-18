class Category < ApplicationRecord
  has_many :products
  validates :desc, presence: true, length: {minimum: 5  }
end
