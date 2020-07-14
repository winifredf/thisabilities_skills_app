class User < ActiveRecord::Base
    has_many :skills

    has_secure_password

    validates :name, :age, :email, presence: true
    validates :email, uniqueness: true
end