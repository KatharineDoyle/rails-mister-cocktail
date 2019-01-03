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
  name: 'Sharp-Edged Mojito'
  )
cocktail_1.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1545151958/vitchakorn-koonyosying-527280-unsplash.jpg'
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

cocktail_6 = Cocktail.create!(
  name: 'Corpse Reviver'
  )
cocktail_6.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1546462201/johann-trasch-1141816-unsplash.jpg'
cocktail_6.save!

cocktail_7 = Cocktail.create!(
  name: 'Lavender Romance'
  )
cocktail_7.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1546462214/vitchakorn-koonyosying-686009-unsplash.jpg'
cocktail_7.save!

cocktail_8 = Cocktail.create!(
  name: 'Ron de Replay'
  )
cocktail_8.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1546462356/alex-loup-397220-unsplash.jpg'
cocktail_8.save!

cocktail_9 = Cocktail.create!(
  name: 'Lethal Raspberry Smoothie'
  )
cocktail_9.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1546462356/alex-loup-397220-unsplash.jpg'
cocktail_9.save!


cocktail_10 = Cocktail.create!(
  name: 'Sly\'s Honey Mule'
  )
cocktail_10.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1546462579/ash-edmonds-491898-unsplash.jpg'
cocktail_10.save!
