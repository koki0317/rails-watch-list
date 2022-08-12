require 'open-uri'
puts "Movie destroying"
Movie.destroy_all
# List.destroy_all

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)
  puts "creating moviews"
response['results'].each do |movie_hash|
  Movie.create!(
    poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path'],
    rating: movie_hash['vote_average'],
    overview: movie_hash['overview'],
    title: movie_hash['original_title']
  )
end
puts "#{Movie.count} finished"
