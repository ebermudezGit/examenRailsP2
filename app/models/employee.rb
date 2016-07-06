class Employee < ActiveRecord::Base
	has_many :operation, dependent: :destroy
	validates :nombre, presence: true
	validates :nombre,  presence: true
	validates :nombre,uniqueness: {case_sensitive: false ,message: "Nombre ya existe"}
	
end
