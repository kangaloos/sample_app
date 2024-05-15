class ApplicationController < ActionController::Base
 
  def edit
    @list = List.find(params[:id])
  end
  
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
    
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end