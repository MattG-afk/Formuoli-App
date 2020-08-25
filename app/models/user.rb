class User < ApplicationRecord
    validates_presence_of   :email, :message => 'Please Enter User  Name.'
    validates_presence_of   :password, :message => 'Please Enter Your Password.'
    has_secure_password
    has_many :ingredients
    has_many :recipes, through: :ingredients   

        def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.username = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
    end

end

