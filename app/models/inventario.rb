class Inventario < ActiveRecord::Base
	has_one :operation, dependent: :destroy

	scope :nulos, -> { Operation.where('inventario_id is null') }
end
