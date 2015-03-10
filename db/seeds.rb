User.create!(username: "first")
User.create!(username: "second")

Contact.create!(name: "John Doe", email: "johndoe@example.com", user_id: 1)
Contact.create!(name: "Jane Doe", email: "janedoe@mailers", user_id: 1)
Contact.create!(name: "fiddler", email: "alltheroofs@earth", user_id: 2)

ContactShare.create!(user_id: 1, contact_id: 3)
ContactShare.create!(user_id: 2, contact_id: 1)
