class Product < ActiveRecord::Base
    belongs_to :category, :foreign_key => 'category'
		
    has_many :orders, :through => :line_items
    
    validates :title, 
end
