puts 'Creating movies..'

15.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    rating: rand(0..10),
    poster_url: 'https://www.soda.com/wp-content/uploads/2020/04/lord-of-the-rings-streaming-guide.jpg'
  )
  movie.save!
  puts "Created movie with id: #{movie.id}"
end

puts 'Finished creating movies!'
