class Recipe < ApplicationRecord
        has_many :ingredients
        has_many :users, through: :ingredients
        accepts_nested_attributes_for :ingredients
end
