class Category < ActiveRecord::Base
    belongs_to :categorable, polymorphic: true
    belongs_to :user


end