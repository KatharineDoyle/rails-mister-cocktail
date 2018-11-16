require 'open-uri'


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(url).read)

ingredients["drinks"].each do |h|
  ingredient = h["strIngredient1"]
  Ingredient.create(name: ingredient)
end
