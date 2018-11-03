require 'test_helper'

class ComentariosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comentarios_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comentarios_destroy_url
    assert_response :success
  end

end
