class Pet < ApplicationRecord

  SPECIES = %w(dog cat bird turtle pig dragon)
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
