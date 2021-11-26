class Receipt < ActiveRecord::Base
    has_many :notes, as: :notable
    belongs_to :store, optional: true
    belongs_to :category, optional: true
    belongs_to :user, optional: true

    accepts_nested_attributes_for :notes, reject_if: proc {|att| att['content'].is_blank?}

    validates :store_name, presence: true

    def category_name=(name)
        self.category = Category.find_or_create_by(name: name)
    end

    def category_name
        self.category ? self.category.name : nil
    end

    def store_name=(name)
        self.store = Store.find_or_create_by(name: name)
    end

    def store_name
        self.store ? self.store.name : nil
    end

end