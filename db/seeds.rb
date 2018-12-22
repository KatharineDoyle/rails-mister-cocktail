require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(url).read)

ingredients["drinks"].each do |h|
  ingredient = h["strIngredient1"]
  Ingredient.create(name: ingredient)
end

puts 'Cleaning database...'
Cocktail.destroy_all

cocktail_1 = Cocktail.create!(
  name: 'Mojito'
  )
cocktail_1.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1545151868/adam-jaime-119565-unsplash.jpg'
cocktail_1.save!

cocktail_2 = Cocktail.create!(
  name: 'Berry Daquiri'
  )
cocktail_2.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1545151868/adam-jaime-119565-unsplash.jpg'
cocktail_2.save!

cocktail_3 = Cocktail.create!(
  name: 'Lemon Delight'
  )
cocktail_3.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1545152063/shenggeng-lin-712234-unsplash.jpg'
cocktail_3.save!

cocktail_4 = Cocktail.create!(
  name: 'Irish Coffee'
  )
cocktail_4.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1545152227/celina-rohrbach-782096-unsplash.jpg'
cocktail_4.save!

cocktail_5 = Cocktail.create!(
  name: 'Classy Watermelon Swizzle'
  )
cocktail_5.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1545152343/shenggeng-lin-684773-unsplash.jpg'
cocktail_5.save!
