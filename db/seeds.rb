
User.destroy_all
Pet.destroy_all
# Create an admin user
admin_user = User.create(
  user_name: 'sharon_username',
  email: 'sharon@example.com',
  password: 'password1',
  admin: true
)

# Create the second admin user
admin_user2 = User.create(
  user_name: 'cynthia_username',
  email: 'cynthia@example.com',
  password: 'password2',
  admin: true
)


puts 'Admin user created.'



Pet.create(name: "Fluffy", age: 3, image: "https://www.pinterest.com/pin/476466835589171819/", description: "Friendly dog looking for a home", species: "animal")
Pet.create(name: "Whiskers", age: 2, image: "https://www.pinterest.com/pin/736971926544352087/", description: "Playful cat in need of a loving family", species: "animal")
Pet.create(name: "Buddy", age: 4, image: "https://www.pinterest.com/pin/612982199297029652/", description: "Loyal companion ready for adoption", species: "animal")
Pet.create(name: "Mittens", age: 1, image: "https://www.pinterest.com/pin/295971006777582035/", description: "Adorable kitten seeking a forever home", species: "animal")
Pet.create(name: "Rocky", age: 2, image: "https://www.pinterest.com/pin/358317714090163679/", description: "Energetic and playful pup in need of a family", species: "animal")
Pet.create(name: "Smokey", age: 3, image: "https://www.pinterest.com/pin/1055599901426103/", description: "Gentle cat looking for a quiet home", species: "animal")
Pet.create(name: "Luna", age: 1, image: "https://www.pinterest.com/pin/344455071511878995/", description: "Sweet and loving dog ready for adoption", species: "animal")
Pet.create(name: "Oreo", age: 4, image: "https://www.pinterest.com/pin/70437486067553/", description: "Cute black-and-white cat looking for a family", species: "animal")
Pet.create(name: "Max", age: 5, image: "https://www.pinterest.com/pin/177399672814908763/", description: "Gentle giant seeking a loving home", species: "animal")
Pet.create(name: "Milo", age: 2, image: "https://www.pinterest.com/pin/881720433279312675/", description: "Playful and friendly cat in need of a family", species: "animal")
Pet.create(name: "Bella", age: 1, image: "https://www.pinterest.com/pin/820710732114550884/", description: "Adorable puppy looking for a forever home", species: "animal")
Pet.create(name: "Simba", age: 3, image: "https://www.pinterest.com/pin/330310953933394029/", description: "Majestic cat ready to be your companion", species: "animal")
Pet.create(name: "Coco", age: 2, image: "https://www.pinterest.com/pin/2322237297607976/", description: "Happy and energetic dog ready for adoption", species: "animal")
Pet.create(name: "Oliver", age: 4, image: "https://i.pinimg.com/474x/8e/0d/c8/8e0dc8c5897efaf1f223d2d8c8aa2824.jpg", description: "Charming cat in search of a loving family", species: "animal")
Pet.create(name: "Daisy", age: 3, image: "https://www.pinterest.com/pin/621989398561147537/", description: "Sweet and gentle dog seeking a caring home", species: "animal")
Pet.create(name: "Leo", age: 2, image: "https://i.pinimg.com/474x/b2/b4/c2/b2b4c2dfb70843b1bbf0ae22e6dd7aff.jpg", description: "Playful and curious cat looking for a forever family", species: "animal")
Pet.create(name: "Charlie", age: 6, image: "https://i.pinimg.com/474x/29/bf/88/29bf885a17d8c86ed58a19476574e805.jpg", description: "Lovable senior dog ready to be your best friend", species: "animal")
Pet.create(name: "Lily", age: 5, image: "https://www.pinterest.com/pin/621989398561147537/", description: "Graceful and affectionate cat in need of a home", species: "animal")
Pet.create(name: "Ruby", age: 2, image: "https://i.pinimg.com/564x/fd/9f/41/fd9f4180ea0f222efd336a4c8affc96e.jpg", description: "Sweet and Charming", species: "animal")

