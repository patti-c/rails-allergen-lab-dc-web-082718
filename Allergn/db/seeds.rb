Recipe.destroy_all
User.destroy_all
Ingredient.destroy_all

chocolate = Ingredient.create(name: "chocolate")
eggs = Ingredient.create(name: "egg")
flour = Ingredient.create(name: "flour")
cheese = Ingredient.create(name: "cheese")
milk = Ingredient.create(name: "milk")
salt = Ingredient.create(name: "salt")
sugar = Ingredient.create(name: "sugar")
orange = Ingredient.create(name: "orange")
vanilla = Ingredient.create(name: "vanilla")
noodles = Ingredient.create(name: "noodles")
tomato = Ingredient.create(name: "tomato sauce")
fish = Ingredient.create(name: "fish")

fry = User.create(name: "Fry")
bender = User.create(name: "Bender")
leela = User.create(name: "Leela")
hermes = User.create(name: "Hermes")
zoidberg = User.create(name: "Zoidberg")

pasta = Recipe.new(name: "Fry's Pasta")
pasta.user = fry
pasta.ingredients << tomato
pasta.ingredients << noodles
pasta.ingredients << cheese
pasta.save

chocolate_cake = Recipe.new(name: "Leela's Cake")
chocolate_cake.user = leela
chocolate_cake.ingredients << flour
chocolate_cake.ingredients << milk
chocolate_cake.ingredients << sugar
chocolate_cake.ingredients << chocolate
chocolate_cake.save

vanilla_cake = Recipe.new(name: "Bender's Vanilla Cake")
vanilla_cake.user = bender
vanilla_cake.ingredients << flour
vanilla_cake.ingredients << milk
vanilla_cake.ingredients << sugar
vanilla_cake.ingredients << eggs
vanilla_cake.ingredients << vanilla
vanilla_cake.save

fry.ingredients << fish
leela.ingredients << orange
bender.ingredients << salt
bender.ingredients << fish
