class Item < ActiveRecord::Base
    has_many :notes, as: :notable
    has_many :categories, as: :categorable
    belongs_to :itemable, polymorphic: true
    belongs_to :store, optional: true
    belongs_to :receipt, optional: true
    belongs_to :user

    accepts_nested_attributes_for :notes, reject_if: proc {|att| att['content'].is_blank?}
    accepts_nested_attributes_for :categories, reject_if: proc {|att| att['name'].is_blank?}
    validates :name, presence: true
    validates :price, presence: true
    validates :tax, presence: true
    
end