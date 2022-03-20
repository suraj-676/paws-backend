class AdminController < ApplicationController
end

def index
  @admins = Admin.all
end

def show
end

def adoptions
  @animals = Animal.where status: "pending"
end

def approve_user
  user = User.find(params[:id])
  user.approved = true
  if user.save
    flash[:notice] = "#{user.id} approved"
  else
    flash[:alert] = "#{user.id} approval failure"
  end
  redirect_to animals_path
end

def update
end

def create
end

def destroy
end
