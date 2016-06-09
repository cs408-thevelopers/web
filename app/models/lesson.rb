class Lesson < ActiveRecord::Base
  belongs_to :klass
  def images
    Dir["#{Rails.root}/public/images/#{id}/*.jpg"].map do |path|
      "#{id}/#{File.basename path}"
    end.sort
  end

  def pdfs
    Dir["#{Rails.root}/public/images/#{id}/*.pdf"].map do |path|
      "#{id}/#{File.basename path}"
    end.sort
  end
end
