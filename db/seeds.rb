# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://images.unsplash.com/photo-1570129477492-45c003edd2be?auto=format&fit=crop&w=800&q=80'
)

Flat.create!(
  name: 'Cosy Studio near Montmartre',
  address: '12 Rue Lepic 75018 Paris',
  description: 'A bright and quiet studio on the top floor, with a view over the rooftops of Paris. Perfect for a couple, close to the metro and great cafés.',
  price_per_night: 90,
  number_of_guests: 2,
  picture_url: 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?auto=format&fit=crop&w=800&q=80'
)

Flat.create!(
  name: 'Modern Loft in Lyon Confluence',
  address: '25 Quai Rambaud 69002 Lyon',
  description: 'A spacious loft with large windows overlooking the river. Fully equipped kitchen, fast wifi and a balcony for sunny mornings.',
  price_per_night: 110,
  number_of_guests: 4,
  picture_url: 'https://images.unsplash.com/photo-1598228723793-52759bba239c?auto=format&fit=crop&w=800&q=80'
)

Flat.create!(
  name: 'Family House by the Sea',
  address: '8 Promenade des Anglais 06000 Nice',
  description: 'A charming house a few steps from the beach. Three bedrooms, a garden with a barbecue and a terrace with a sea view.',
  price_per_night: 180,
  number_of_guests: 6,
  picture_url: 'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?auto=format&fit=crop&w=800&q=80'
)

puts "Finished! #{Flat.count} flats created."
