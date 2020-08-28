class Recipe < ApplicationRecord

        #belongs_to :ingredient
        #belongs_to :user

        has_many :ingredients
        has_many :users, through: :ingredients
        accepts_nested_attributes_for :ingredients
end
