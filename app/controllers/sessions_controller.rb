class SessionsController < ApplicationController

  def new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to root_path
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

end
