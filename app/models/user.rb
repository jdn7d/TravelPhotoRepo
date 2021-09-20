class User < ApplicationRecord
    has_secure_password

    has_many :trips
    has_many :photos, through: :trips

    validates_presence_of :email, :username, :password
    validates_uniqueness_of :email, :username
    validates :password, length: { minimum: 6 }
    
end
