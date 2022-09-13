Movie.destroy_all
User.destroy_all
Alert.destroy_all

puts "🌱 Seeding movies..."

m1=Movie.create(title: "Star Wars",year:1977,imdb_id: "tt0076759")
m2=Movie.create(title: "Hudson Hawk",year:1991,imdb_id: "tt0102070")
m3=Movie.create(title: "Gunmen",year:1993,imdb_id: "tt0109959")



50.times do
    User.create(email: Faker::Internet.email)
end

5.times do
    Alert.create(movie_title: m1.title, movie_id: m1.id, user_id: User.all.sample.id)
    Alert.create(movie_title: m2.title, movie_id: m2.id, user_id:  User.all.sample.id)
    Alert.create(movie_title: m3.title, movie_id: m3.id, user_id:  User.all.sample.id)
end

puts "✅ Done seeding!"
