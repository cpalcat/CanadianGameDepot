class Province < ActiveRecord::Base
	has_many :customers
	validates_presence_of :province
	validates_uniqueness_of :province
end
