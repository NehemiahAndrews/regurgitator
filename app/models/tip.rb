class Tip < ApplicationRecord
  validates :advice, presence: true, length: {maximum: 140, minimum:3}
  validates :author, presence: true, length: {maximum: 30, minimum: 1}
end
