class PagesController < ApplicationController
  def home
    @rental_listings = RentalListing.all
  end
end
