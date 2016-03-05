class LabelsController < ApplicationController
  def show
  	@label = Label.find_by(params[:id])
  end
end
