class User < ApplicationRecord
    has_many :experiences 
    has_many :places, through: :experiences
    
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

 

end
