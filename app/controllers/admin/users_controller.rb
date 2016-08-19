class Admin::UsersController < ApplicationController

  before_action :restrict_access
  before_action :restrict_to_admins

  def index
    @users = User.all
  end

  def new
  end

  def create
  end

  def show
  end

  protected

    def restrict_to_admins
      if !current_user.is_admin
        flash[:alert] = "You must be an admin to access that page."
        redirect_to new_session_path
      end
    end

end
