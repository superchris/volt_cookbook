class RecipeController < Volt::ModelController

  def recipes
    store._recipes.find(_id: params._recipe_id)
  end

  # def show
  #   store._recipes.find(_id: params._recipe_id).then do |results|
  #     page._recipe = results.first
  #   end
  # end

end
