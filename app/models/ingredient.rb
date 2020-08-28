class Ingredient < ApplicationRecord
    belongs_to :recipe
    belongs_to :user


    #has_many :recipes
    #has_many :users, through: :recipes
    #accepts_nested_attributes_for :recipes
end
