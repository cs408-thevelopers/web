class User < ActiveRecord::Base
  has_secure_password
  enum status: %i(student assistant instructor)
  has_many :subscriptions
  has_many :klasses, through: :subscriptions
end
