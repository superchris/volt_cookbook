class Recipe < Volt::Model
  field :title
  field :description
  field :meal_id

  def all_of_it
    "#{title} #{description}"
  end

  def meal
    $page.store._meals.find(_id: meal_id).first
  end

end
