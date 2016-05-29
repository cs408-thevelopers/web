class Klass < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :lessons
  def instructors
    users.where(status: User.statuses[:instructor])
  end

  def students
    users.where(status: User.statuses[:student])
  end
  
  def assistants
    users.where(status: User.statuses[:assistant])
  end
  
end
