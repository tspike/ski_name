class InitialsController < ApplicationController
  def index
    
  end

  def new
    @initials = Initial.new 
  end

  def create
    @initials = Initial.new(params[:initial])
    respond_to do |format|
      format.js do
        render :partial => 'name', :layout => false, :locals => { :initials => @initials }
      end
      format.html do
        unless @initials.valid?
          render new_initial_path
        end
      end
    end
  end
end
