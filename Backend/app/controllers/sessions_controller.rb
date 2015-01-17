class SessionsController < ApplicationController
  def index
    @users = User.all
  end
end
