# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mike = User.create(username: "Mike", password:"123", password_confirmation:"123")
# photo = "/home/mike/flatiron/projects/Mod-4-Wireframe/Mod4-Notes-Backend/storage/prince.jpg"
150.times do

    Note.create(title: Faker::Music::Prince.song, content: Faker::Music::Prince.lyric, user: mike )

end