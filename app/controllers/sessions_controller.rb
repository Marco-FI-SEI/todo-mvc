class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to :root
    else
      render "sessions/new"
    end
  end

  def destroy
    reset_session

    redirect_to :login
  end
end
