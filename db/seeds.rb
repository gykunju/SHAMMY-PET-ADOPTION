
User.destroy_all
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



Pet.create(name: "Fluffy", age: 3, image: "https://example.com/dog1.jpg", description: "Friendly dog looking for a home")
Pet.create(name: "Whiskers", age: 2, image: "https://example.com/cat1.jpg", description: "Playful cat in need of a loving family")
Pet.create(name: "Buddy", age: 4, image: "https://example.com/dog2.jpg", description: "Loyal companion ready for adoption")
Pet.create(name: "Mittens", age: 1, image: "https://example.com/cat2.jpg", description: "Adorable kitten seeking a forever home")
Pet.create(name: "Rocky", age: 2, image: "https://example.com/dog3.jpg", description: "Energetic and playful pup in need of a family")
Pet.create(name: "Smokey", age: 3, image: "https://example.com/cat3.jpg", description: "Gentle cat looking for a quiet home")
Pet.create(name: "Luna", age: 1, image: "https://example.com/dog4.jpg", description: "Sweet and loving dog ready for adoption")
Pet.create(name: "Oreo", age: 4, image: "https://example.com/cat4.jpg", description: "Cute black-and-white cat looking for a family")
Pet.create(name: "Max", age: 5, image: "https://example.com/dog5.jpg", description: "Gentle giant seeking a loving home")
Pet.create(name: "Milo", age: 2, image: "https://example.com/cat5.jpg", description: "Playful and friendly cat in need of a family")
Pet.create(name: "Bella", age: 1, image: "https://example.com/dog6.jpg", description: "Adorable puppy looking for a forever home")
Pet.create(name: "Simba", age: 3, image: "https://example.com/cat6.jpg", description: "Majestic cat ready to be your companion")
Pet.create(name: "Coco", age: 2, image: "https://example.com/dog7.jpg", description: "Happy and energetic dog ready for adoption")
Pet.create(name: "Oliver", age: 4, image: "https://example.com/cat7.jpg", description: "Charming cat in search of a loving family")
Pet.create(name: "Daisy", age: 3, image: "https://example.com/dog8.jpg", description: "Sweet and gentle dog seeking a caring home")
Pet.create(name: "Leo", age: 2, image: "https://example.com/cat8.jpg", description: "Playful and curious cat looking for a forever family")
Pet.create(name: "Charlie", age: 6, image: "https://example.com/dog9.jpg", description: "Lovable senior dog ready to be your best friend")
Pet.create(name: "Lily", age: 5, image: "https://example.com/cat9.jpg", description: "Graceful and affectionate cat in need of a home")
Pet.create(name: "Ruby", age: 2, image: "https://i.pinimg.com/564x/fd/9f/41/fd9f4180ea0f222efd336a4c8affc96e.jpg", description: "Sweet and Charming")

