class User < ApplicationRecord
  has_secure_password

  validates :dinero, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :deuda, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
