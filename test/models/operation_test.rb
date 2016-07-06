require 'test_helper'

class OperationTest < ActiveSupport::TestCase
  test "employee exists" do

    operations(:two).employee_id = nil

    print "validation references employee exists exists "
    print assert_not operations(:two).save

  end

  test "Item exists" do

    operations(:two).inventario_id = nil

    print "validation references Item exists "
    print assert_not operations(:two).save

  end

end
