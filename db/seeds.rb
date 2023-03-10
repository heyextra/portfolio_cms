# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# admin = Admin.create(email:"admin@example.com", password:"password", password_confirmation:"password")
# admin.save

# Category.create(name:"photo")
# Category.create(name:"design")
# Category.create(name:"paint")

Item.create(title: "New Item", description: "A new item", category_ids: [1, 2, 3], admin_id:1)

