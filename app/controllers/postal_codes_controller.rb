class PostalCodesController < ApplicationController
  def create
    @postcode = PostalCode.new(postal_code_params)

    if @postcode.save
      redirect_to dashboard_path
    else
      render 'dashboard/show'
    end
  end

  private
  def postal_code_params
    params.require(:postal_code).permit(:postcode, :city)
  end
end
