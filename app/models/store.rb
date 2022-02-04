class Store < ActiveRecord::Base
    has_many :receipts
    has_many :items
    belongs_to :user
end