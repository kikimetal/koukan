class CountriesController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @country = Country.find(params[:id])
  end
end
