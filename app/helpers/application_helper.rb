module ApplicationHelper
  def check_skill_owner
    master_skill = current_user.skills.find_by(id:params[:skill_id])
    if master_skill.nil?
      flash[:error] = "That's not your goal."
      redirect_to root_path
    end
  end
end
