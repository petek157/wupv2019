class BusinessesController < ApplicationController

  before_action :confirm_logged_in

  def index
    @businesses = Business.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = 'Please login to continue!'
      redirect_to root_path()
    end
  end
end
