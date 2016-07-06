class Employee < ActiveRecord::Base
	validates :nombre, presence: true
end
