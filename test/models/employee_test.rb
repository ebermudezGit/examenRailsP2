require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  test "nombre exists" do

    employees(:two).nombre = nil

    print "validation field nombre exists "
    print assert_not employees(:two).save

  end
end
