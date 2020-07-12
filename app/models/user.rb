class User < ActiveRecord::Base
    has_many :skills

    has_secure_password
end