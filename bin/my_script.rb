require 'addressable/uri'
require 'rest-client'

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json',
  ).to_s

  puts RestClient.post(
    url,
    { user: { name: "Gillmo", email: "gizmo@gizmo.gizmo" } }
  )
rescue RestClient::UnprocessableEntity
  puts 'Incorrect params'
end

def show_user_1
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1',
  ).to_s

  puts RestClient.get(url)
end

def update_user_1
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1',
  ).to_s

  puts RestClient.patch(
    url,
    { user: { email: "newmail@new.mail" } }
  )
end

def destroy_user_1
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1',
  ).to_s

  puts RestClient.delete(
    url
  )
end



def create_contact(contact_params)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts'
  ).to_s

  puts RestClient.post(
    url,
    contact: contact_params
  )

rescue RestClient::UnprocessableEntity
  puts "Incorrect params"
end

def show_contacts(user_id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{user_id}/contacts"
  ).to_s

  puts RestClient.get(url)
end

def show_contact(id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/contacts/#{id}"
  ).to_s

  puts RestClient.get(url)
end

def update_contact(id, contact_params)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/contacts/#{id}"
  ).to_s

  puts RestClient.patch(
    url,
    contact: contact_params
  )
rescue RestClient::UnprocessableEntity
  puts "Incorrect params"
end

def destroy_contact(id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/contacts/#{id}"
  ).to_s

  puts RestClient.delete(url)
end



def create_contact_share(contact_share_params)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contact_shares'
  ).to_s

  puts RestClient.post(
    url,
    contact_share: contact_share_params
  )
rescue RestClient::UnprocessableEntity
  puts "Incorrect params"
end

def destroy_contact_share(id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/contact_shares/#{id}"
  ).to_s

  puts RestClient.delete(url)
end

# create_contact(name: 'cats', email: 'ofthe@world.unite!', user_id: 2)
show_contacts(2)
# show_contact(1)
# update_contact(1, name: "Jamie", email: "imm@the.bestest")
# destroy_contact(2)

# create_contact_share(user_id: 1, contact_id: 2)
# destroy_contact_share(3)
