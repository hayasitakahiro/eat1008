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
  redirect_to root_path
end

def update
  @cheat = Cheat.find(params[:id])
  if @cheat.update(cheat_params)
    redirect_to cheat_path
  else
    render :edit
  end
end

private
def cheat_params
  params.require(:cheat).permit(:name, :image)
end
end
