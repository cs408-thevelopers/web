class Lesson < ActiveRecord::Base
  belongs_to :klass
  has_many :images
end
