# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


10.times do |i|
  User.create(
    name: Faker::Name.first_name,
    username: Faker::Name.last_name,
    email: "user_#{i}@gmail.com"
  )
end


user = User.find_by_email('user_0@gmail.com')

3.times do
  Project.create(
    title: Faker::App.name,
    slug: Faker::Internet.slug(words: nil, glue: "-"),
    description: Faker::Lorem.sentence(word_count: [5,10,15].sample),
    user_id: user.id,
    created_at: Time.now,
    updated_at: Time.now
  )
end