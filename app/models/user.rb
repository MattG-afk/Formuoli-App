class User < ApplicationRecord
    has_secure_password
    has_many :ingredients
    has_many :recipes, through: :ingredients   

end

