class CheatsController < ApplicationController
  before_action :authenticate_user!,  only: [:show, :edit, :destroy]
 
 
  def index
    @cheat = Cheat.all
  end

 def new
  @cheat = Cheat.new
 end

 def create

  @cheat = Cheat.new(cheat_params)
   if @cheat.save
    redirect_to root_path
   else
    render :new
   end
 end

 def show
 
  @cheat = Cheat.find(params[:id])
 end
    
 def destroy
  @cheat = Cheat.find(params[:id])
  @cheat.destroy
  redirect_to root_path
 end

 def edit
  @cheat = Cheat.find(params[:id])
  
  
 end

 def update
  @cheat = Cheat.find(params[:id])
   if @cheat.update(cheat_params)
    redirect_to root_path
  else
    render :edit
   end
 end

private
 def cheat_params
  params.require(:cheat).permit(:name, :image).merge(user_id: current_user.id)
 end
end
