class HomeController < ApplicationController

  layout 'front'

  def index
    @test = "Im Peter"
  end
end
