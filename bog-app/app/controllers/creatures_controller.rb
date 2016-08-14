class CreaturesController < ApplicationController

  def index
      @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    @creature = Creature.new(creature_params)
    return redirect_to creature_path if @creature.save
  end

  def show
    @creature = Creature.find(params[:id])
  end
end
