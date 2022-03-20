class SessionController < ApplicationController
  def new
  end

  def create
    # check if email address enetered is actually i the db
    user = User.find_by email: params[:email]
    if user.present? && user.authenticate(params[:password])
      # credentials are correct

      session[:user_id] = user.id
      redirect_to 
        #back to home page
      #rendor json: @adoption
    else

      # the flash hash is a bit like 'sesion in that it is remebered across page req

      flash[:error] = "Invalid email or password"

      redirect_to login_path

      # either the user was nil or the password entered in to the login form, when encrypted, did no
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
