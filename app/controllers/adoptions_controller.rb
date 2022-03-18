class AdoptionsController < ApplicationController
def index
    @adoption = Adoption.all
end

def show
    @adoption = Adoption.find params[:id]
    render json
end

def create
    adoption = Adoption.create
    user_id:current_user.id, address:params
end

def update
    adoption = Adoption.find params[:id]
        if adoption.update status: :adopt
          
          render json: adoption,
end


end