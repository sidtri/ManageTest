class MainController < ApplicationController
  def index

  end
  def projects
  	@mypjts = Project.all
    @randvar = ['right','Wrong','alert']
    @count = Request.where('status=?','new').count
  end
  def create
    if params[:upload][:file]
      name = params[:upload][:file].original_filename
      directory = "public/images/upload"
      path = File.join(directory, name)
      File.open(path, "wb") { |f| f.write(params[:upload][:file].read) }
    	@project = Project.new(:name => params[:name],:content=> params[:content])
    	if @project.save!
        Fil.create(:project_id => @project.id ,:kick => name)
    		redirect_to root_url, :notice => 'Project Created successfully'
    	end
    else
      redirect_to projects_path, :notice => 'Attach Document Kickoff meeting'
    end
  end
  private
   def reqparams
      params.permit(:name,:content)
   end
end
