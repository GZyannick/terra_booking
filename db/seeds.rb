Planet.destroy_all
User.destroy_all



alpha = User.create(username: "AlPha", email: "planet@saturne.st", password: "azerty")

blob = User.create(username: "BlobloBg", email: "planet@mars.ms", password: "azerty")

spock = User.create(username: "Spock", email: "spock@vulcain.vm", password: "azerty")

superman = User.create(username: "Superman", email: "clark@terre.tr", password: "azerty" )

10.times do
  User.create(
    username: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: "azerty"
    )
end

saturne = Planet.create(owner: alpha, name: "saturne", price: 1, description: "planete non tellurique , belle vue sur la terre")
mars = Planet.create(owner: spock, name: "mars", price: 1,description: "belle vue sur saturne")
vulcain = Planet.create(owner: spock, name: "vulcain", price: 1,description: "pas de belle vue , venez comme vous etes")
alpha = Planet.create(owner: alpha, name: "cucu", price: 1, description: "planete non tellurique , belle vue sur la terre")

#5.times do
#  Planet.create(
#    owner: alpha,
#    name: Faker::Space.moon,
#    description: "Welcome on my moon!"
#    )
#end
#
#5.times do
#  Planet.create(
#    owner: blob,
#    name: Faker::Space.planet,
#    description: "A charming planet with a giant hot tube!"
#    )
#end
#
#5.times do
#  Planet.create(
#    owner: superman,
#    name: Faker::Space.nebula,
#    description: "Have a fabulous and nebulous souvenir!"
#    )
#end
#

booking1 = Booking.create!(duration: 1, user: blob, planet: vulcain)
booking2 = Booking.create!(duration: 7, user: spock, planet: saturne)

