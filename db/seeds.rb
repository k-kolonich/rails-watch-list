# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning current database'
Movie.destroy_all

puts 'Creating 5 movies'

5.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Avatar.image,
    rating: rand(0.0..10.0)
  )
  movie.save!
end

puts 'Done! Movies have been generated 😸'
