class RecipesController < ApplicationController
    before_action :require_login

    def show
      @recipe=Recipe.new
      @recipe=Recipe.find_by(params[:name])
    end
    
    def index
        @recipe=Recipe.all
    end
    
    def new
      @recipe = Recipe.new
      @recipe.ingredients.build
    end
    
    def create
      @recipe = Recipe.new
      @recipe.name = params[:name]
      @recipe.content = params[:content]
      @recipe.ingredient_name = params[:ingredient][:name]
      recipe.ingredient_quantity= parasms [:ingredient][:quantity]
      @recipe.save
    end
    
      private
    
      def recipe_params
         @recipe = params.require(:recipe).permit(:name,:content, ingredients_attributes: [:name, :quantity])
      end


    
end
