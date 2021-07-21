class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  ALLOWED_CATEGORIES = %w[chinese italian japanese french belgian]

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ALLOWED_CATEGORIES }
end
