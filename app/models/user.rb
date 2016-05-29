class User < ActiveRecord::Base
  enum status: %i(student assistant instructor)
  has_many :subscriptions
  has_many :klasses, through: :subscriptions
end
