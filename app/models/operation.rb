class Operation < ActiveRecord::Base
	belongs_to :employee
	belongs_to :inventario
	validates :descripcion,:employee_id,:inventario_id, presence: true
	after_destroy :operacion_borrar
	scope :five, -> { order("id desc").limit(5) }
	scope :ultima_fecha, -> { 
		fecha = order("created_at").last.created_at
		where("created_at BETWEEN ? and ?",fecha.beginning_of_day,fecha.end_of_day)
	}

	def operacion_borrarn
		trabajador = Employee.find(employee_id)
		Registro.create(descripcion:"Registro de Operacion eliminado ")
	end

end
