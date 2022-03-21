class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    if @user.persisted?
      auth_token = Knock::AuthToken.new payload: { sub: @user.id }
      render json: { jwt: auth_token.token }
    else
      head 422
    end
  end

  def index
    @users = User.all
  end

  # def show
  #   @user = User.find params[:id]
  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render :json => @user.to_json }
  #   end
  # end

  def edit
    @user = User.find params[:id]
    redirect_to login_path unless session[:user_id] == @current_user.id
  end

  def current
    render json: @current_user
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
    end
  end

  private

  def user_params
    params.require(:_json).permit(:email, :password, :first_name, :last_name)
  end
end #of class
