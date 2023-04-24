# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(name: 'Product 1', description: 'Product 1 description', price: 10.99, image: 'product1.jpg')
Product.create(name: 'Product 2', description: 'Product 2 description', price: 15.99, image: 'product2.jpg')
Product.create(name: 'Product 3', description: 'Product 3 description', price: 20.99, image: 'product3.jpg')
