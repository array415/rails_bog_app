class CreaturesController < ApplicationController


  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
    @creature.errors.messages
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    @creature = Creature.new(creature_params)
    return redirect_to creature_path(@creature) if @creature.save
    render "new"
  end

  def show
    @creature = find(params[:id])
  end

  def edit
    @creature = find(params[:id])
  end

  def update
    creature_params = params.require(:creature).permit(:name, :description)
    @creature = find(params[:id])
    @creature.update_attributes(creature_params)
    redirect_to creature_path(@creature)
  end

  def delete
    @creature = find(params[:id])
    @creature.destroy
    redirect_to creatures_path
  end


  private

  def find(id)
    Creature.find(id)
  end


end
