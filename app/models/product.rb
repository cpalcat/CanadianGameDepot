class Product < ActiveRecord::Base
    belongs_to :category
		
    has_many :orders, :through => :line_items
    
    def self.search(search)
       search_condition = "%" + search + "%"
       find(:all, :conditions => ['title LIKE ?', search_condition])
    end
end
