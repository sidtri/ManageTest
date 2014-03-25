class MonitorController < ApplicationController
  def index

  end

  def show
    @down = Fil.where('project_id=?',params[:id]).first
    @initiation = Test.where('project_id=?',params[:id])

  end

  def new
  	@req = Request.new
  end

  def create
  	@req = Request.new(:dev=>params[:name],:content=>params[:content],:status=>'new',:project_id=>params[:id])
    if @req.save!
      redirect_to root_url
    end
  end
  private
  def user_params
  	params.require(:basic).permit(:avatar)
  end
end
