class UsersController < ApplicationController

  skip_before_filter :authenticate_user!, only: [:home]
  before_action :set_user, only: [:show, :edit, :update, :destroy, :profile]

  def home
    render layout: false
  end

  def index
    @title = "Users"
  end

  def show
    @title = @user.name
  end

  def profile
    @title = @user.name
  end

private

  def set_user
    user_id = params[:id].to_i
    if current_user && current_user.id == user_id
      @user = current_user
    else
      @user = User.find_by_id(user_id)
    end
    return @user
  end
end
