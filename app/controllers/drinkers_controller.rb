class DrinkersController < ApplicationController
  # GET /drinkers
  # GET /drinkers.json
  def index
    @drinkers = Drinker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @drinkers }
    end
  end


  def main
    @drinkers = Drinker.all

    respond_to do |format|
      format.html # main.html.erb
      format.json { render :json => @drinkers }
    end
  end


  def debitcredit
    @drinker = Drinker.find(params[:id])
    @drinker.bottlechanges.create({
        :addremove => params[:addremove],
        :comment => params[:comment]
    })
    #TODO: check if create succeeded.
  end


  # GET /drinkers/1
  # GET /drinkers/1.json
  def show
    @drinker = Drinker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @drinker }
    end
  end

  # GET /drinkers/new
  # GET /drinkers/new.json
  def new
    @drinker = Drinker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @drinker }
    end
  end

  # GET /drinkers/1/edit
  def edit
    @drinker = Drinker.find(params[:id])
  end

  # POST /drinkers
  # POST /drinkers.json
  def create
    @drinker = Drinker.new(params[:drinker])

    respond_to do |format|
      if @drinker.save
        format.html { redirect_to @drinker, :notice => 'Drinker was successfully created.' }
        format.json { render :json => @drinker, :status => :created, :location => @drinker }
      else
        format.html { render :action => "new" }
        format.json { render :json => @drinker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /drinkers/1
  # PUT /drinkers/1.json
  def update
    @drinker = Drinker.find(params[:id])

    respond_to do |format|
      if @drinker.update_attributes(params[:drinker])
        format.html { redirect_to @drinker, :notice => 'Drinker was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @drinker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /drinkers/1
  # DELETE /drinkers/1.json
  def destroy
    @drinker = Drinker.find(params[:id])
    @drinker.destroy

    respond_to do |format|
      format.html { redirect_to drinkers_url }
      format.json { head :ok }
    end
  end
end
