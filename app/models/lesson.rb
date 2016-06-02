class Lesson < ActiveRecord::Base
  belongs_to :klass
  def images
    Dir["#{Rails.root}/public/images/#{id}/*"].map do |path|
      "#{id}/#{File.basename path}"
    end
  end
end
