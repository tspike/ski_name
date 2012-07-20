class InitialsController < ApplicationController
  def index
    
  end

  def new
    @initials = Initial.new 
  end

  def create
    @initials = Initial.new(params[:initial])
    @skier_name = @initials.to_skier_name
  end
end
