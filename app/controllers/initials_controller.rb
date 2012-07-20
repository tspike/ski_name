class InitialsController < ApplicationController
  def index
    
  end

  def new
    @initials = Initial.new 
  end

  def create
    @initials = Initial.new(params[:initial])
    unless @initials.valid?
      render new_initial_path
    end
  end
end
