class Client < ActiveRecord::Base
	has_many :relationships
	validates :name, uniqueness: true	
        validates :name, length: {minimum: 5 } 
end
