class RecipesController < ApplicationController
    before action :require_login
end
