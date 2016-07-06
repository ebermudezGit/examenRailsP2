require 'test_helper'

class OperationTest < ActiveSupport::TestCase
  test "employee exists" do

    operations(:two).employee_id = nil

    print "validation references employee exists exists "
    print assert_not operations(:two).save

  end
end
