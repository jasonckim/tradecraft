class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update(user_params)
    # render_wizard @user
    redirect_to profile_path
  end

  private
    def user_params
      params.require(:user).permit(:bio, :pic, :zipcode, :banner_url)
    end

end

