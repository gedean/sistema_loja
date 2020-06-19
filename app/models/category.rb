class Category < ApplicationRecord
  has_many :products
  has_many :sales
  validates :desc, presence: true, length: {minimum: 5  }
end
