require 'test_helper'

class ProjectSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_skill = project_skills(:one)
  end

  test "should get index" do
    get project_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_project_skill_url
    assert_response :success
  end

  test "should create project_skill" do
    assert_difference('ProjectSkill.count') do
      post project_skills_url, params: { project_skill: { description: @project_skill.description, order: @project_skill.order, project_id: @project_skill.project_id, skill_id: @project_skill.skill_id } }
    end

    assert_redirected_to project_skill_url(ProjectSkill.last)
  end

  test "should show project_skill" do
    get project_skill_url(@project_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_skill_url(@project_skill)
    assert_response :success
  end

  test "should update project_skill" do
    patch project_skill_url(@project_skill), params: { project_skill: { description: @project_skill.description, order: @project_skill.order, project_id: @project_skill.project_id, skill_id: @project_skill.skill_id } }
    assert_redirected_to project_skill_url(@project_skill)
  end

  test "should destroy project_skill" do
    assert_difference('ProjectSkill.count', -1) do
      delete project_skill_url(@project_skill)
    end

    assert_redirected_to project_skills_url
  end
end
