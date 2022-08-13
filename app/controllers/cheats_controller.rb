class CheatsController < ApplicationController
  def index
    @cheat = Cheat.all
  end

def new
  @cheat = Cheat.new
end

def create
  Cheat.create(cheat_params)

end
private
def cheat_params
  params.require(:cheat).permit(:name, :image)
end
end
