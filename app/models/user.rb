class User < ActiveRecord::Base
    has_secure_password

    has_many :receipts
    has_many :notes
    has_many :items
    has_many :categories
    has_many :stores

    validates :username, uniqueness: true

    def self.from_omniauth(response)
        User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end
end