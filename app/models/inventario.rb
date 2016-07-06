class Inventario < ActiveRecord::Base
	has_one :operation, dependent: :destroy
end
