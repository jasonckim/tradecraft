class SkillsController < ApplicationController

  def landing
    #landing page
  end

  def profile
    @skills = Skill.all
    #@user = User.all
    # @user.current = User.find(params[:user_id])
    # @user = User.where(id: params[:user_id])
  end

  def about
    #how it works page
  end

  def index
    @skills = Skill.all
    @user = User.all
    #@skill = Skill.find(params[:id])
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    # @skill = Skill.create(skills_param)
    # redirect_to about_path
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.json { render json: @skill, status: :created}
      else
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.update(skill_params)
    redirect_to about_path
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to about_path
  end

  private
    def skill_params
      params.require(:skill).permit(:bio, :pic, :skills, :tolearn )
    end

end
