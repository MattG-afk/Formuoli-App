class User < ApplicationRecord
    validates_presence_of   :email, :message => 'Please Enter User  Name.'
    validates_presence_of   :password, :message => 'Please Enter Your Password.'
    has_secure_password
    has_many :ingredients
    has_many :recipes, through: :ingredients   

end

