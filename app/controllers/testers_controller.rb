class TestersController < ApplicationController
  def index
  	@initiation = Test.all
  end

  def initiate
  end

  def show
  	
  end

  def create
    
  	@initiate = Test.new(:project_id => params[:project_id],:content=>params[:content],:name => params[:name],:environment => params[:environment],:created_at => params[:created_at],:updated_at => params[:updated_at])
  	if @initiate.save!
  		redirect_to monitor_show_path(params[:project_id])
  	end
  end
end
