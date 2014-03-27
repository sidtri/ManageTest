class MonitorController < ApplicationController
  def index

  end

  def show
    @down = Fil.where('project_id=?',params[:id]).first
    @initiation = Test.where('project_id=?',params[:id])
    @count = Request.where('status=?','new').count
    @ack = Acknowledge.find_by_project_id(params[:id])
    @req = Request.where('project_id=?',params[:id]).last
  end

  def new
  	@req = Request.new
  end

  def create
  	@req = Request.new(:dev=>params[:name],:content=>params[:content],:status=>'new',:project_id=>params[:id])
    if @req.save!
      redirect_to root_url, :notice => 'Request sent to Tester\'s inbox successfully '
    end
  end
  private
  def user_params
  	params.require(:basic).permit(:avatar)
  end
end
