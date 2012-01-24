class BottlechangesController < ApplicationController

  def create
    @drinker = Drinker.find(params[:drinker_id])
    @bottlechange = @drinker.bottlechanges.create(params[:bottlechange])

    # TODO: DIsplay errors when it doesn't work.
    # Perhaps with respond_to ?
    redirect_to drinker_path(@drinker)
  end

end
