# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.destroy_all

Article.create!([{
  title: "Soul",
  body: "After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.",
},
{
  title: "The Lord of the Rings: The Fellowship of the Ring",
  body: "The Fellowship of the Ring embark on a journey to destroy the One Ring and end Sauron's reign over Middle-earth. A young Hobbit known as Frodo has been thrown on an amazing adventure, when he is appointed the job of destroying the One Ring, which was created by the Dark Lord Sauron.",
},
{
  title: "Terminator 2",
  body: "Terminator 2 follows Sarah Connor and her ten-year-old son John as they are pursued by a new, more advanced Terminator: the liquid metal, shapeshifting T-1000, sent back in time to kill John Connor and prevent him from becoming the leader of the human resistance.",
}])

p "Created #{Article.count} articles."