class Item < ActiveRecord::Base
    has_many :notes, as: :notable
    belongs_to :store, optional: true
    belongs_to :receipt, optional: true
    belongs_to :category, optional: true

    accepts_nested_attributes_for :notes, reject_if: proc {|att| att['content'].is_blank?}

    def category_name=(name)
        self.category = Category.find_or_create_by(name: name)
    end

    def category_name
        self.category ? self.category.name : nil
    end
end