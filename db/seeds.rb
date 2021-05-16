# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

user = User.new(
      :email                 => "admin#{rand(1...100)}@xxxxx.xxx",
      :password              => "123456",
      :password_confirmation => "123456"
  )
user.save!

(1..5).to_a.each do |id|
  user.birthdays.create(name: "user#{id}", birthday: Date.new(2021,5,id))
end