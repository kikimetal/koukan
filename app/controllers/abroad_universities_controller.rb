class AbroadUniversitiesController < ApplicationController
  def show
    @abroad_univ = AbroadUniversity.find(params[:id])
  end
end
