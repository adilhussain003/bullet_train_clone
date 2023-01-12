require 'faker'
puts "🌱 Generating development environment seeds."

1000.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email(name: "#{first_name} #{last_name}")
  password = Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true)
  User.create(first_name: first_name, last_name: last_name, email: email, password: password)
end

users = User.limit(15)
users.each do |user|
    motivation = Motivation.create(name: Faker::Lorem.word)
    survey = user.created_surveys.create(name: Faker::Lorem.word, motivation_id: motivation.id)
    27.times do
        question = Question.create(question: Faker::Lorem.question, motivationer_id: motivation.id)
        survey.questions << question
    end
end
