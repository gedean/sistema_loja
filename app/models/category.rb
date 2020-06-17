class Category < ApplicationRecord
  validates :desc, presence: true, length: {minimum: 5  }
end
