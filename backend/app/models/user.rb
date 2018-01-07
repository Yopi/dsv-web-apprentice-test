class User < ApplicationRecord
	has_many :orders

  # We want to require all fields on signup
  validates :name, presence: true
  validates :address, presence: true

	has_secure_password
end
