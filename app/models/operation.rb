class Operation < ActiveRecord::Base
	belongs_to :employee
	validates :descripcion,:employee_id, presence: true

end
