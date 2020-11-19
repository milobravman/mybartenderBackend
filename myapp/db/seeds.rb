# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Table.destroy_all
Drink.destroy_all
Group.destroy_all

tables = Table.create([
    {seats: 4, position: 1 },
    {seats: 4, position: 2},
    {seats: 6, position: 3},
    {seats:2, position: 4}
])

drinks = Drink.create([
    {name: "Margarita", price: 9, instructions: "half tequila half lime juice and triple sec", ingredients: "tequila, lime juice, triple sec, secret"},
    {name: "Modelo", price: 5, instructions: "open and put in lime wedge", ingredients: "see lable"},
    {name: "Corona", price: 5, instructions: "open and put in lime wedge", ingredients: "see lable"},
    {name: "Pacifico", price: 5, instructions: "open and put in lime wedge", ingredients: "see lable"}

])

group = Group.create({num_people: 3, table_id:tables[0][:id]})

tab = DrinkGroup.create({group: group, drink: drinks[0]})