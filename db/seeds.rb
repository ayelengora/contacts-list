# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all
EditHistory.destroy_all
puts "Creating 3 contacts"
contacts = Contact.create!([
  {
    first_name: "Homero j",
    last_name: "Simpson",
    email:"h_simpson@gmail.com",
    phone_number: "623337930"
  },
  {
    first_name: "Lisa p",
    last_name: "Simpson",
    email:"l_simpson@gmail.com",
    phone_number: "623337931"
  },
  {
    first_name: "Bart h",
    last_name: "Simpson",
    email:"bart_simpson@gmail.com",
    phone_number: "623337932"
}
])
puts "creating edit histories"
edit_histories = EditHistory.create! ([
  
  {
    first_name: "Homero j",
    last_name: "Peterson",
    email:"h_simpson@gmail.com",
    phone_number: "623337930",
    edit_date: Date.today,
    contact: contacts.first
  },
  {
    first_name: "Homero j",
    last_name: "Peterson",
    email:"h_peterson@gmail.com",
    phone_number: "623337930",
    edit_date: Date.today,
    contact: contacts.first
  },
  {
    first_name: "Barto h",
    last_name: "Simpson",
    email:"bart_simpson@gmail.com",
    phone_number: "623337930",
    edit_date: Date.today,
    contact: contacts.last
  },
  {
    first_name: "Barty h",
    last_name: "Simpson",
    email:"h_peterson@gmail.com",
    phone_number: "623337930",
    edit_date: Date.today,
    contact: contacts.last
  }
])
puts "seeds done"