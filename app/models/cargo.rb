class Cargo < ApplicationRecord
  has_many :colaboradores

  validates :nome, presence: true, length: { maximum: 60 }
end
