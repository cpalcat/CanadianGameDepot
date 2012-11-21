class Customer < ActiveRecord::Base
		belongs_to :province
		has_many :orders, :users
end
