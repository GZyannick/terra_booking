Planet.destroy_all
User.destroy_all



alpha = User.create(username: "AlPha", email: "planet@saturne.st", password: "azerty" , first_name: 'Al', last_name: 'Pha')


blob = User.create(username: "BlobloBg", email: "planet@mars.ms", password: "azerty" , first_name: 'blo', last_name: 'B')

spock = User.create(username: "Spock", email: "spock@vulcain.vm", password: "azerty" , first_name: 'spo', last_name: 'ck')


superman = User.create(username: "Superman", email: "clark@terre.tr", password: "azerty" , first_name: 'Clark', last_name: 'kent')


saturne = Planet.create(owner: alpha, name: "saturne", description: "planete non tellurique , belle vue sur la terre")
mars = Planet.create(owner: spock, name: "mars", description: "belle vue sur saturne")
vulcain = Planet.create(owner: spock, name: "vulcain", description: "pas de belle vue , venez comme vous etes")

booking1 = Booking.create!(duration: 1, user: blob, planet: vulcain)
booking2 = Booking.create!(duration: 7, user: spock, planet: saturne)
