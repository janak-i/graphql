# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
User.create(name: 'Prateek Smith', email: 'prateek@gmail.com', password: 'prateek')

User.create(name: 'Janak Doe', email: 'janak@gmail.com', password: 'janak')
User.create(name: 'mohit Smith', email: 'mohhit@example.com', password: 'password')
User.create(name: 'rohit Doe', email: 'rohit@example.com', password: 'password')
User.create(name: 'virat Smith', email: 'virat@example.com', password: 'password')



Post.create(title: 'First Post', body: 'This is the first post.',user_id:1)
Post.create(title: 'Second Post', body: 'This is the second post.', user_id:2)

Post.create(title: 'First Post', body: 'This is the first post.',user_id:3)
Post.create(title: 'Second Post', body: 'This is the second post.', user_id:4)

