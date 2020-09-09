
class RecipesController < ApplicationController
    before_action :require_login

    def show
      @recipe = Recipe.find(params[:id])
      #binding.pry
    end
    
    def index
        @recipes =Recipe.all
        #binding.pry
    end
    
    def new
      @recipe = Recipe.new
      @recipe.ingredients.build(name: "name")
      
    end
    
    def create
      @recipe = Recipe.new(recipe_params)
  
      @recipe.save

      #binding.pry
      redirect_to recipes_path
    end
    
      private
        def recipe_params
          params.require(:recipe).permit(:id,:name,:content, ingredients_attributes: [
            :recipe_id,
            :user_id,
            :name,
            :quantity
            ]
          )
        end


    
end
