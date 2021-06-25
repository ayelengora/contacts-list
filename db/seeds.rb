# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contacts = Contact.create([
  {
    first_name: "Homero",
    last_name: "Simpson",
    email:"h_simpson@gmail.com",
    phone_number: "623337930"
  },
  {
    first_name: "Lisa",
    last_name: "Simpson",
    email:"l_simpson@gmail.com",
    phone_number: "623337931"
  },
  {
    first_name: "Bart",
    last_name: "Simpson",
    email:"bart_simpson@gmail.com",
    phone_number: "623337932"
  }
])

edit_histories = EditHistory.create ([
  
  {
    first_name: "Homero",
    last_name: "Peterson",
    email:"h_simpson@gmail.com",
    phone_number: "623337930",
    contact: contacts.first
  },
  {
    first_name: "Homero",
    last_name: "Peterson",
    email:"h_peterson@gmail.com",
    phone_number: "623337930",
    contact: contacts.first
  }
])