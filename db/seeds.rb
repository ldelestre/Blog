# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Ce file créé ou, selon les cas 'rand', génère de la data aléatoirement, qui sera ensuite injectée dans la database

require 'faker'

# Creation des 10 users

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

# Creation des 10 articles

10.times do
	Article.create(title: Faker::Lorem.word.capitalize, content: Faker::Lorem.sentences(1), user_id: rand(1..10))
end

# Creation des 5 categories

5.times do
	Category.create(name: Faker::Food.dish, article_id: rand(1..10))
end

# Creation des 15 commentaires

15.times do
	Comment.create(content: Faker::Pokemon.location, user_id: rand(1..10), article_id: rand(1..10))
end

# Creation des 15 likes

15.times do
	Like.create(user_id: rand(1..10), article_id: rand(1..10))
end