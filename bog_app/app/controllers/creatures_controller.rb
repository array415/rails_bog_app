class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
  end

end
