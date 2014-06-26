class SkillsController < ApplicationController

  def landing
    #landing page
  end

  def about
    #how it works page
  end

  def profile
    @current_user = current_user
    @skill = @current_user.skills.new
    @user_skill = @current_user.skills.all
  end

  def publicprofile
    @user = User.find(params[:id])
    @user_skill = @user.skills.all
    render "public_profile"
  end

  def index
    # doing a search on this page
  end

  def results
    @current_user = current_user
    @skills = Skill.search(params[:search])
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @current_user = current_user
    @skill = @current_user.skills.new
  end

  def create
    @skill = Skill.create(skill_params)
    redirect_to profile_path
    # @skill = Skill.new(skill_params)

    # respond_to do |format|
    #   if @skill.save
    #     format.json { render json: @skill, status: :created}
    #     format.html {redirect_to profile_path}
    #   else
    #     format.json { render json: @skill.errors, status: :unprocessable_entity }
    #   end
    # end
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
      params.require(:skill).permit(:skill, :tolearn, :user_id, :tag, :learntag )
    end

end
