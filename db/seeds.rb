# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating recipes..."
Recipe.create!(name: "Healthy breakfast pot", description: "Overnight oats are perfect as a grab-and-go healthy breakfast pot", image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/healthy_breakfast_pot_96291_16x9.jpg" , rating: "5")

Recipe.create!(name: "Breakfast smoothie", description: "Short on time in the mornings? Not a problem with these quick high-protein smoothies.", image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/banana_smoothie_17334_16x9.jpg" , rating: "4")

Recipe.create!(name: "Avocado salad", description: "vocado salads are quick and easy to make and will keep you full for longer. This vegan salad is made with cannellini beans, tomatoes and fresh herbs.", image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/avocado_salad_60227_16x9.jpg" , rating: "4")

Recipe.create!(name: "Bruschetta", description: "Fresh flavours abound in Donna Hay’s simple but delicious loaded bruschetta – perfect as a light lunch or starter.", image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/bruschetta_roasted_63855_16x9.jpg" , rating: "3")

Recipe.create!(name: "Roast beef dinner", description: "A great family roast, cooked in a casserole with lots of vegetables to add flavour to the gravy.", image_url: "https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/roast_beef_dinner_76669_16x9.jpg" , rating: "5")

puts "Created #{Recipe.count} recipes"
