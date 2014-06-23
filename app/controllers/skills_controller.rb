class SkillsController < ApplicationController

  def landing
    #landing page
  end

  def profile
    # @skills = Skill.all
    @current_user = current_user
    @skill = @current_user.skills.new
    @user_skill = @current_user.skills.all
    # @user_skill = @current_user.skills.find(params[:id])
    # @user_skill = @current_user.skills.find(params[:current_user.id])
    # @user_skill = current_user.skills.find(params[:user_id])
    # @user = User.where(id: params[:user_id])
  end

  def about
    #how it works page
  end

  def index
    # @skills = Skill.all
    # @user = User.all
    @skill = Skill.search(params[:search])
    #@skill = Skill.find(params[:id])
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @current_user = current_user
    @skill = @current_user.skills.new
    # @skill = Skill.new
  end

  def create
    # @skill = Skill.create(skills_param)
    # redirect_to about_path
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.json { render json: @skill, status: :created}
        format.html {redirect_to profile_path}
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
      params.require(:skill).permit(:skill, :tolearn, :user_id )
    end

end
