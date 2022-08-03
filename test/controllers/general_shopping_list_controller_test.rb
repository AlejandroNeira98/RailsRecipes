# frozen_string_literal: true

require 'test_helper'

class GeneralShoppingListControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get general_shopping_list_index_url
    assert_response :success
  end

  test 'should get new' do
    get general_shopping_list_new_url
    assert_response :success
  end

  test 'should get create' do
    get general_shopping_list_create_url
    assert_response :success
  end
end
