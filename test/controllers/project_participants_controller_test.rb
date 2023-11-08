require "test_helper"

class ProjectParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_participants_index_url
    assert_response :success
  end

  test "should get create" do
    get project_participants_create_url
    assert_response :success
  end

  test "should get show" do
    get project_participants_show_url
    assert_response :success
  end
end
