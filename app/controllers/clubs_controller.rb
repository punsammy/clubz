class ClubsController < ApplicationController
  before_action :require_login, only: [:show]
  before_action :authorize, only: [:show]
  # only ensures that it will only run on the show action
  # user can still see index without logging in

  def index
    @clubs = Club.all
  end

  def show
    redirect_to new_session_path unless current_user
    @club = Club.find(params[:id])
  end

  private

  def require_login
    redirect_to new_session_path unless current_user
  end

  def authorize
    redirect_to root_path unless User::ALLOWED_ROLES.include?(current_user.role)
  end

end
