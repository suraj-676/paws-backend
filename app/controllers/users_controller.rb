class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user.to_json }
  end
end``

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update user_params
    redirect_to user_path(params[:id])
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully burned.' }
      format.json { head :no_content }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :address)
  end
end #of class
