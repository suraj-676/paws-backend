class AdminController < ApplicationController
  def create
    @user = User.create user_params
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @animals = Animal.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user.to_json }
    end
  end # show

  def adoptions
    @adoptions = Animal.where status: "pending"
    p "adoptions===============================================", @adoptions
  end

  def approve_animal
    animal = Animal.find(params[:id]).update_column(:status, "approved")
    flash[:notice] = "Adoption has been approved"
    redirect_to root_path
  end

  def edit
    @user = User.find params[:id]
    redirect_to login_path unless session[:user_id] == @current_user.id
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path(params[:id])
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully burned." }
      format.json { head :no_content }
    end # respond to
  end #destroy

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :address)
  end # user params
end # class
