class TestersController < ApplicationController
  before_filter :authenticate
  def index
  	@requests = Request.all.order(created_at: :desc)
  end

  def initiate
  end

  def show
  	
  end
  def manage
    @exists = Acknowledge.find_by_request_id(params[:req_id])
    @ack = Acknowledge.new
  end

  def create
    
  	@initiate = Test.new(:project_id => params[:project_id],:content=>params[:content],:name => params[:name],:environment => params[:environment],:created_at => params[:created_at],:updated_at => params[:updated_at])
  	if @initiate.save!
  		redirect_to monitor_show_path(params[:project_id]), :notice => 'Testing Initiated ...'
  	end
  end
  def ack
    @ack = Acknowledge.new(:project_id=>params[:id],:request_id=>params[:req_id],:docs=>params[:docs],:time=>params[:time],:resources=>params[:resources],:content=>params[:content])
    if @ack.save!
      redirect_to root_url,:notice => 'Acknowledge Sent ..'
    end

  end


  private
   def authenticate
    authenticate_or_request_with_http_basic do |username , password|
      username == 'tester' && password == 'password'
    end

   end
end
