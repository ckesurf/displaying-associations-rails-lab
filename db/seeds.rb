# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Artist.destroy_all

10.times do 
  Artist.create(name: Faker::Name.name)
end

100.times do
  Song.create(title: Faker::Music::RockBand.song, artist_id: Artist.ids.sample)
end
