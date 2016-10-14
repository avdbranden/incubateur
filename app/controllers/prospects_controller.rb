class ProspectsController < ApplicationController
  def create
    @prospect = Prospect.new(prospect_params)
    if @prospect.save
      redirect_to contact_path
    else
      # do nothing
    end
  end

  private

  def prospect_params
    params.require(:prospect).permit(:email, :first_name, :last_name, :function)
  end
end