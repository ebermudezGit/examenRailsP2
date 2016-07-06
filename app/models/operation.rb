class Operation < ActiveRecord::Base
	belongs_to :employee
	belongs_to :inventario
	validates :descripcion,:employee_id,:inventario_id, presence: true

end
