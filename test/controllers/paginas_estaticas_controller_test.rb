require 'test_helper'

class PaginasEstaticasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paginas_estaticas_index_url
    assert_response :success
  end

end
