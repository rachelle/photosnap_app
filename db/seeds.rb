# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Yoda.destroy_all
Photo.destroy_all
Comment.destroy_all

yoda = User.create(
  name: "yoda",
  email: "yoda@yoda.com",
  password: "yoda",
  password_confirmation: "yoda",
  avatar: "http://www.empireonline.com/images/features/100greatestcharacters/photos/25.jpg"
  )


yeezy = User.create(
  name: "yeeyz",
  email: "yeezy@yeezy.com",
  password: "yeezy",
  password_confirmation: "yeezy",
  avatar: "http://localhost:3000/system/users/avatars/000/000/003/medium/yeezy.jpg?1438283695"

oliva = User.create(
  name: "oliva",
  email: "oliva@oliva.com",
  password: "olivia",
  password_confirmation: "olivia",
  avatar: "https://s-media-cache-ak0.pinimg.com/236x/83/3f/7f/833f7f5bf58b85f4226554cf71c24aa2.jpg",
)

pika = User.create(
  name: "pika",
  email: "pika@pika.com",
  password: "pika",
  password_confirmation: "pika",
  avatar: "http://localhost:3000/system/users/avatars/000/000/005/medium/pikachu__kawaii___by_hayley_wilson-d5ylde8.png?1438289635",
)

#creates a new post
yoda_photo = Photo.create{
  title: "loving myself",
  image: "https://charmedyogi.files.wordpress.com/2013/01/yoda-meditating.jpg",
  caption: "just feeling the force within me",
  }

yeezy_photo = Photo.create(
  title: "you mad?",
  image: "http://static.guim.co.uk/sys-images/Music/Pix/pictures/2010/8/13/1281700740571/Kanye-West-006.jpg",
  caption: "I feel like I'm too busy writing history to read it"
)

#creates a new comment on users photos
yoda_comment = Comment.create(
  content: "wow kanye you're not messing around with that gold chain!"
)

yeezy_comment = Comment.create(
  content: "looking good for your age yodaaaaaaa",
)

