class Receipt < ActiveRecord::Base
    has_many :notes, as: :notable
    has_many :categories, as: :categorable
    has_many :items, as: :itemable
    belongs_to :store, optional: true
    belongs_to :user, optional: true

    accepts_nested_attributes_for :notes, reject_if: proc {|att| att['content'].is_blank?}
    accepts_nested_attributes_for :categories, reject_if: proc {|att| att['name'].is_blank?}
    accepts_nested_attributes_for :items

    validates :store_name, presence: true

    def store_name=(name)
        self.store = Store.find_or_create_by(name: name)
    end

    def store_name
        self.store ? self.store.name : nil
    end

end