class UsersController < ApplicationController
  def index
    if user_signed_in?
      @users = current_user.all_following
    end
  end

  def show
    @user = current_user
    @contact = @user.contact
  end
  
  def follow
    @user = User.find(params[:id])
    redirect_to(:back)
    if current_user
      if current_user == @user
        flash[:error] = "You cannot follow yourself."
      else
        current_user.follow(@user)
        # RecommenderMailer.new_follower(@user).deliver if @user.notify_new_follower
        flash[:notice] = "You are related to #{@user.email}."
      end
    else
      flash[:error] = "You must sign up to find relations.".html_safe
    end
  end

  def unfollow
    @user = User.find(params[:id])
    redirect_to(:back)
    if current_user
      current_user.stop_following(@user)
      flash[:notice] = "You are not related to #{@user.email}."
    else
      flash[:error] = "You must <a href='/users/sign_in'>login</a> to unfollow #{@user.email}.".html_safe
    end
  end
end
