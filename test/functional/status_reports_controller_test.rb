require 'test_helper'

class StatusReportsControllerTest < ActionController::TestCase
  setup do
    @status_report = status_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_report" do
    assert_difference('StatusReport.count') do
      post :create, :status_report => @status_report.attributes
    end

    assert_redirected_to status_report_path(assigns(:status_report))
  end

  test "should show status_report" do
    get :show, :id => @status_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @status_report
    assert_response :success
  end

  test "should update status_report" do
    put :update, :id => @status_report, :status_report => @status_report.attributes
    assert_redirected_to status_report_path(assigns(:status_report))
  end

  test "should destroy status_report" do
    assert_difference('StatusReport.count', -1) do
      delete :destroy, :id => @status_report
    end

    assert_redirected_to status_reports_path
  end
end
