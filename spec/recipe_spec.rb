require 'spec_helper'

describe Recipe do

  let(:breakfast) {
    breakfast = Meal.new(name: "Breakfast")
    $page.store._meals << breakfast
    breakfast
  }

  let(:recipe) {
    recipe = Recipe.new(title: "Wut", meal_id: breakfast._id)
    recipe
  }

  it "has a meal" do
    expect(recipe.meal).to eq(breakfast)
  end

end
