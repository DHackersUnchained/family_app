class UsersController < ApplicationController
  def index
  end
  
  def follow
    @user = User.find(params[:id])
    redirect_to root_path
    if current_user
      if current_user == @user
        flash[:error] = "You cannot follow yourself."
      else
        current_user.follow(@user)
        # RecommenderMailer.new_follower(@user).deliver if @user.notify_new_follower
        flash[:notice] = "You are now following #{@user.email}."
      end
    else
      flash[:error] = "You must <a href='/users/sign_in'>login</a> to follow #{@user.email}.".html_safe
    end
  end

  def unfollow
    @user = User.find(params[:id])
    redirect_to root_path
    if current_user
      current_user.stop_following(@user)
      flash[:notice] = "You are no longer following #{@user.email}."
    else
      flash[:error] = "You must <a href='/users/sign_in'>login</a> to unfollow #{@user.email}.".html_safe
    end
  end
end
