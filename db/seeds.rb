# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stores = Store.create!([
    {name: "Coles Balaclava", unit_or_building: "", street_number: "Corner", street_name: "Camden St &, Alfred St", suburb: "Balaclava", postcode: 3183, city: "Melbourne"},
    {name: "Coles Elsternwick", unit_or_building: "Elsternwick Shopping Center", street_number: "2", street_name: "Mulgrave Street", suburb: "Elsternwick", postcode: 3185, city: "Melbourne"},
    {name: "Woolworths Metro", unit_or_building: "", street_number: "360", street_name: "Orrong Road", suburb: "Caulfield North", postcode: 3161, city: "Melbourne"},
    {name: "Woolworths St Kilda", unit_or_building: "", street_number: "117", street_name: "Acland Street", suburb: "St Kilda", postcode: 3182, city: "Melbourne"},
    {name: "rebel Prahran", unit_or_building: "", street_number: "296", street_name: "Chapel Street", suburb: "Prahran", postcode: 3181, city: "Melbourne"},
    ])