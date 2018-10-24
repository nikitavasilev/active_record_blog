require 'faker'

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name ,email:Faker::Internet.email)
end

5.times do
  category = Category.create!(name: Faker::Cannabis.buzzword)
end

10.times do
  article= Article.create!(title: Faker::Cannabis.cannabinoid, content: Faker::Lebowski.quote, user_id: Faker::Number.between(User.first.id, User.last.id), category_id: Faker::Number.between(Category.first.id, Category.last.id))
end

15.times do
  comment = Comment.create!(content: Faker::HarryPotter.quote, article_id: Faker::Number.between(Article.first.id, Article.last.id),user_id: Faker::Number.between(User.first.id, User.last.id))
end

15.times do
  like = Like.create!(user_id: Faker::Number.between(User.first.id, User.last.id), article_id: Faker::Number.between(Article.first.id, Article.last.id))
end