class DonationsController < ApplicationController
  before_action :authenticate_user
  def index
    @donations = Donation.all
  end


  def show
    @donation = Donation.find params[:id]
    render json:



    def create
        donation = Donation.create user_id:current_user.id, address:params[:address], status: :unpaid #name and payment type migration required 
        
      end

      def update
        donation = Donation.find params[:id]
        if donation.update status: :paid
          
          render json: donation,
        else
          flash[:error] = "No Donation Found"
        end
      end
    



end