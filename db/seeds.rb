# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do 
  title = Faker::Lorem.word
  is_public = [true, false].sample
  Category.create(title: title, is_public: is_public)
end

5.times do 
  title = Faker::Lorem.word
  is_public = [true, false].sample
  category_id = rand(1..5)
  Category.create(title: title, is_public: is_public, category_id: category_id)
end

5.times do 
  title = Faker::Lorem.word
  is_public = [true, false].sample
  category_id = rand(1..10)
  Category.create(title: title, is_public: is_public, category_id: category_id)
end

5.times do 
  title = Faker::Lorem.word
  is_public = [true, false].sample
  category_id = rand(1..15)
  Category.create(title: title, is_public: is_public, category_id: category_id)
end

20.times do 
  title = Faker::Lorem.word
  Kind.create(title: title)
end

20.times do
  title = Faker::Lorem.word
  url = Faker::Internet.url
  category_id = rand(1..20)
  kind_id = rand(1..20)
  Bookmark.create(title: title, url: url, category_id: category_id, kind_id: kind_id)
end