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

saturne = Planet.new(owner: alpha, name: "saturne", price: 375, description: "C'est loin, mais c'est beau !")
url = URI.open("https://www.solarsystemscope.com/images/textures/full/2k_saturn.jpg")
saturne.photo.attach(io: url, filename: "saturne.jpg" )
saturne.save

mars = Planet.create(owner: spock, name: "mars", price: 213,description: "Vue imprenable sur la terre")
url = URI.open("https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/mars_texture.jpg")
mars.photo.attach(io: url, filename: "mars.jpg" )
mars.save

venus = Planet.create(owner: spock, name: "venus", price: 570,description: "Une planète tout en charme")
url = URI.open("https://nasa3d.arc.nasa.gov/shared_assets/images/ven0aaa2/ven0aaa2-copy-428-321.jpg")
venus.photo.attach(io: url, filename: "venus.jpg" )
venus.save

pluton = Planet.create(owner: alpha, name: "pluton", price: 825, description: "C'est pluton beau !")
url = URI.open("https://pre00.deviantart.net/4677/th/pre/f/2015/314/4/e/pluto_map__2015_nov_10__by_snowfall_the_cat-d918tlb.png")
pluton.photo.attach(io: url, filename: "pluton.jpg" )
pluton.save

neptune = Planet.create(owner: alpha, name: "neptune", price: 400, description: "J'ai un bon ami neptunien")
url = URI.open("https://img00.deviantart.net/f068/i/2017/165/b/c/neptune_texture_map_by_jcpag2010-dbcjcv5.png")
neptune.photo.attach(io: url, filename: "neptune.jpg" )
neptune.save

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

booking1 = Booking.create!(duration: 1, user: blob, planet: venus)
booking2 = Booking.create!(duration: 7, user: spock, planet: saturne)

