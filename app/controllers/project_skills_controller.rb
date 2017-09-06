class ProjectSkillsController < ApplicationController
  before_action :set_project_skill, only: [:show, :edit, :update, :destroy]

  # GET /project_skills
  # GET /project_skills.json
  def index
    @project_skills = ProjectSkill.order_by_project.ordered
  end

  # GET /project_skills/1
  # GET /project_skills/1.json
  def show
  end

  # GET /project_skills/new
  def new
    @project_skill = ProjectSkill.new
  end

  # GET /project_skills/1/edit
  def edit
  end

  # POST /project_skills
  # POST /project_skills.json
  def create
    @project_skill = ProjectSkill.new(project_skill_params)

    respond_to do |format|
      if @project_skill.save
        format.html { redirect_to project_skills_path, notice: 'Project skill was successfully created.' }
        format.json { render :show, status: :created, location: @project_skill }
      else
        format.html { render :new }
        format.json { render json: @project_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_skills/1
  # PATCH/PUT /project_skills/1.json
  def update
    respond_to do |format|
      if @project_skill.update(project_skill_params)
        format.html { redirect_to project_skills_path, notice: 'Project skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_skill }
      else
        format.html { render :edit }
        format.json { render json: @project_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_skills/1
  # DELETE /project_skills/1.json
  def destroy
    @project_skill.destroy
    respond_to do |format|
      format.html { redirect_to project_skills_url, notice: 'Project skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_skill
      @project_skill = ProjectSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_skill_params
      params.require(:project_skill).permit(:project_id, :skill_id, :description, :order, :meta)
    end
end
