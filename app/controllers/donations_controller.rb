class DonationsController < ApplicationController
  before_action :authenticate_user

  def index
    @donations = Donation.all
  end

  def show
    @donation = Donation.find params[:id]
    render json: @donation
  end

  def create
    @donation = Donation.create donation_params
  end

  def update
    donation = Donation.find params[:id]
    if donation.update status: :paid
      render json: donation
    else
      flash[:error] = "No Donation Found"
    end
  end

  private

  def donation_params
    params.permit(:user_id, :amount)
  end
end
