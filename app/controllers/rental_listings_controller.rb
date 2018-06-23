class RentalListingsController < ApplicationController
  def show
    @listing = RentalListing.find(params[:id])
  end
end
