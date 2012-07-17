class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  def correct_user
      @user = User.find(Idea.find(params[:id]).user_id)
      redirect_to(root_path) unless current_user?(@user)
  end

end
 