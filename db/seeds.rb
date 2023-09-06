10.times do
    adopter = Adopter.create(
      name: Faker::Name.name,
      contact_info: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email
    )
  
    5.times do
      Pet.create(
        name: Faker::Creature::Name.name,
        species: Faker::Creature::Animal.name,
        age: Faker::Number.between(from: 1, to: 10),
        image: Faker::LoremPixel.image(size: '300x300', is_gray: false, category: 'animals'),
        description: Faker::Lorem.sentence,
        adopter: adopter
      )
    end
  end