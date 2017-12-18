# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

["Action", "Adventure", "Fantasy", "Animation", "Science Fiction", "Drama", "Thriller", "Family", "Comedy"].each do |name|
  Genre.create(name: name)
  puts "分類： #{name} 新增完成"
end

data = CSV.read(File.join(File.dirname(__dir__), 'tmp', 'movies_stats.csv'))

data.each do |row|
  movie = Movie.new
  movie.genre_id = Genre.find_by(name: row.shift).id
  movie.language = row.shift
  movie.title = row.shift
  movie.overview = row.shift
  movie.release_date = Date.parse(row.shift)
  movie.revenue = row.shift.to_i
  movie.runtime = row.shift.to_i
  movie.save
  puts "電影：#{movie.title} 新增完成"
end
