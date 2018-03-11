users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.sentence(5)
  users.each { |user| user.repositories.create!(title: title) }
end