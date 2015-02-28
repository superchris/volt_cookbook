class RecipesController < Volt::ModelController

  # reactive_accessor :_query

  reactive_accessor :_recipe
  # model :store

  def index
    new()
  end

  def edit
  end

  def show
    self._recipe = store._recipes.find(_id: params._recipe_id).first
  end

  def new
    self.model = store._recipes.buffer
  end

  def select(recipe)
    self.model = recipe.buffer
  end

  def remove(recipe)
    queried_recipes.delete(recipe)
  end

  def queried_recipes
    store._recipes.find({title: { '$regex' => _query.or(''), '$options' => 'i' }})
  end

  def searching
    queried_recipes.state == :loading
  end

end
