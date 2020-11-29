# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FoodGroup.destroy_all
DrinkGroup.destroy_all
Table.destroy_all
Drink.destroy_all
Group.destroy_all
Food.destroy_all

tables = Table.create([
    {seats: 4, position: 1},
    {seats: 4, position: 2},
    {seats: 6, position: 3},
    {seats: 2, position: 4},
    {seats: 2, position: 5},
    {seats: 8, position: 6}
])

drinks = Drink.create([
    {name: "Margarita", price: 9, instructions: "half tequila half lime juice and triple sec", ingredients: "tequila, lime juice, triple sec, secret"},
    {name: "Moscow Mule", price: 10, instructions: "4 cups ginger beer, 2/3 cups lime juice, 1-1/4 cups vodka ", ingredients: "Ginger beer, lime juice, vodka"},
    {name: "Pineapple Rum Punch", price: 8, instructions: "3 cups pineapple juice, 1 cup orange juice, 1-1/4 cups rum ", ingredients: "Pineapple juice, orange juice, coconut water"},
    {name: "Old-Fashioned", price: 8, instructions: "1-1/2 cups maraschino juice, 1 oz brandy, 1 teaspoon bitters, 1 teaspoon orange juice, 3 oz lemon lime soda ", ingredients: "maraschino juice, orange juice, brandy, lemon-lime soda, bitters"},
    {name: "Modelo", price: 5, instructions: "open and put in lime wedge", ingredients: "see lable"},
    {name: "Corona", price: 5, instructions: "open and put in lime wedge", ingredients: "see lable"},
    {name: "Pacifico", price: 5, instructions: "open and put in lime wedge", ingredients: "see lable"},
    {name: "Heineken", price: 5, instructions: "open", ingredients: "see lable"}

])

food = Food.create([
    {name: "Hamburger", price: 9, time: 10},
    {name: "Cheeseburger", price: 9, time: 10},
    {name: "Vegieburger", price: 8, time: 10},
    {name: "Chicken Alfredo", price: 8, time: 12},
    {name: "Cheese Pizza", price: 11, time: 7},
    {name: "Side Salad", price: 5, time: 5},
    {name: "Fries", price: 3, time: 5},
    {name: "Pasta Chips", price: 3, time: 5}
])