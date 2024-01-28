class Article < ApplicationRecord
  # These validation are checked before model object is saved
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true, length: {minimum: 10}
end
