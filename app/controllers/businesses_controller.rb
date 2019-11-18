class BusinessesController < ApplicationController

  before_action :confirm_logged_in

  def index
    @businesses = Business.all
  end

  def show
    @bus = Business.find(params[:id])
    @user = AdminUser.find(session[:user_id]) if session[:user_id]

    @allBusinesses = Business.all.order("name ASC")
    @business = Business.find(params[:id])
    
    render layout: "admin_business"
  end

  def new
    allcats = Business.select(:category).all.order('category ASC')
    @cats = []
    allcats.each do |c|
      
      unless @cats.include?(c.category)
        @cats << c.category       
      end
    end
    @bus = Business.new

    render layout: "admin_business"
  end

  def create
    business = Business.create!(business_params)

    flash[:notice] = "#{business.name} was successfully created."
    redirect_to business_path(business.id);
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
    params.require(:business).permit(:name, :latitude, :longitude, :address1, :address2, :city, :state, :zipcode, :phone, :website, :category, :isFeatured, :position, :isActive, :featureAd)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = 'Please login to continue!'
      redirect_to root_path()
    end
  end
end
