class User < ApplicationRecord
    has_secure_password


    validates :username, presence: true, uniqueness: true
    # validates :username, length: { in: 3..30}

    # validates :password, length: { in: 6..20, message: "Password should be between 6 and 20 characters." }
end
