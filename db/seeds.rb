# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# def randname
#   (0...8).map { (65 + rand(26)).chr }.join
# end

# 10.times  do |u|
#   name = randname
#   status = %i(student assistant instructor).sample
#   User.create name: name, status: status, username: name, password: name
# end


k = Klass.create name: "CS900", short_desc: "Ultimate CS Class", long_desc: "Lorem Ipsum Dolor Amet"

# 20.times do |k|
#   name = randname
#   k = Klass.create name: name, description: "Description of class #{name}"
  
#   10.times do 
#     k.lessons.create(name: randname)
#   end

#   User.order("RANDOM()").first(20).each do |u|
#     k.subscriptions.create(user: u)
#   end
# end
