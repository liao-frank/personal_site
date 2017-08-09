require 'test_helper'

class ProjectImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_image = project_images(:one)
  end

  test "should get index" do
    get project_images_url
    assert_response :success
  end

  test "should get new" do
    get new_project_image_url
    assert_response :success
  end

  test "should create project_image" do
    assert_difference('ProjectImage.count') do
      post project_images_url, params: { project_image: { caption: @project_image.caption, img_url: @project_image.img_url, order: @project_image.order, project_id: @project_image.project_id } }
    end

    assert_redirected_to project_image_url(ProjectImage.last)
  end

  test "should show project_image" do
    get project_image_url(@project_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_image_url(@project_image)
    assert_response :success
  end

  test "should update project_image" do
    patch project_image_url(@project_image), params: { project_image: { caption: @project_image.caption, img_url: @project_image.img_url, order: @project_image.order, project_id: @project_image.project_id } }
    assert_redirected_to project_image_url(@project_image)
  end

  test "should destroy project_image" do
    assert_difference('ProjectImage.count', -1) do
      delete project_image_url(@project_image)
    end

    assert_redirected_to project_images_url
  end
end
