# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


prince = User.create(username: "prince", password:"123", password_confirmation:"123")
150.times do
   num = rand(1..16)
   note =  Note.new(title: Faker::Music::Prince.song, content: Faker::Music::Prince.lyric, user: prince  )
   note.photo.attach(io: File.open("app/assets/images/prince#{num}.jpg"), filename: "prince#{num}.jpg", content_type: 'image/jpg')
   note.save
end