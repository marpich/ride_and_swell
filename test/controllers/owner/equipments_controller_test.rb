require "test_helper"

class Owner::EquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_equipments_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_equipments_create_url
    assert_response :success
  end
end
