class CheatsController < ApplicationController
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
   
def show
  @cheat = Cheat.find(params[:id])
end
    
end
private
def cheat_params
  params.require(:cheat).permit(:name, :image)
end
end
