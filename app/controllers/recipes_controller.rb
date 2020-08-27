
class RecipesController < ApplicationController
    before_action :require_login

    def show
      @recipe=Recipe.find_by(params[:name])
      #binding.pry
    end
    
    def index
        @recipe=Recipe.all
        #binding.pry
    end
    
    def new
      @recipe = Recipe.new
      @recipe.ingredients.build(name: "name")
      @recipe.ingredients.build(quantity: "quantity")

    end
    
    def create
      @recipe = Recipe.create(recipe_params)
  
      @recipe.save

      #binding.pry
      redirect_to recipes_path
    end
    
      private
        def recipe_params
          params.require(:recipe).permit(:name,:content, ingredients_attributes: [
            :recipe_id,
            :user_id,
            :name,
            :quantity
            ]
          )
        end


    
end
