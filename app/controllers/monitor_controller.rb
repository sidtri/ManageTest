class MonitorController < ApplicationController
  def index
  end

  def show
    @down = Fil.where('project_id=?',params[:id]).first
    @initiation = Test.where('project_id=?',params[:id])

  end

  def new
  	
  end

  def create
  	
  end
  private
  def user_params
  	params.require(:basic).permit(:avatar)
  end
end
