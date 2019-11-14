class BusinessesController < ApplicationController

  before_action :confirm_logged_in

  def index
    @businesses = Business.all
  end

  def show
    @bus = Business.find(params[:id])
    @user = AdminUser.find(session[:user_id]) if session[:user_id]

    render layout: "admin_business"
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @business = Business.find(params[:id])

    if @business.update_attributes(business_params)
      
      flash[:notice] = "#{@business.name} was updated successfully."
      redirect_to(business_path(@business))

    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end

  private

  def business_params
    params.require(:business).permit(:name, :latitude, :longitude, :address1, :address2, :city, :state, :zipcode, :phone, :website, :category, :isFeatured, :position, :isActive)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = 'Please login to continue!'
      redirect_to root_path()
    end
  end
end
