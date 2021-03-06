class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirec to the user's show page
      log_in user
      redirect_to user_url(user)
    else
      # Flash an error message
      flash.now[:danger] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    # Log out the user
    log_out
    redirect_to root_url
  end
end
