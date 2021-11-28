class User < ActiveRecord::Base
    has_secure_password

    has_many :receipts
    has_many :notes

    validates :user_name, uniqueness: true
end