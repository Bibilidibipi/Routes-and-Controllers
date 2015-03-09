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

destroy_user_1
