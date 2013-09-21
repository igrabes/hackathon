class PlayerMlbsController < ApplicationController
  # GET /player_mlbs
  # GET /player_mlbs.json
  def index
    @player_mlbs = PlayerMlb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_mlbs }
    end
  end

  # GET /player_mlbs/1
  # GET /player_mlbs/1.json
  def show
    @player_mlb = PlayerMlb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_mlb }
    end
  end

  # GET /player_mlbs/new
  # GET /player_mlbs/new.json
  def new
    @player_mlb = PlayerMlb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_mlb }
    end
  end

  # GET /player_mlbs/1/edit
  def edit
    @player_mlb = PlayerMlb.find(params[:id])
  end

  # POST /player_mlbs
  # POST /player_mlbs.json
  def create
    @player_mlb = PlayerMlb.new(params[:player_mlb])

    respond_to do |format|
      if @player_mlb.save
        format.html { redirect_to @player_mlb, notice: 'Player mlb was successfully created.' }
        format.json { render json: @player_mlb, status: :created, location: @player_mlb }
      else
        format.html { render action: "new" }
        format.json { render json: @player_mlb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_mlbs/1
  # PUT /player_mlbs/1.json
  def update
    @player_mlb = PlayerMlb.find(params[:id])

    respond_to do |format|
      if @player_mlb.update_attributes(params[:player_mlb])
        format.html { redirect_to @player_mlb, notice: 'Player mlb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_mlb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_mlbs/1
  # DELETE /player_mlbs/1.json
  def destroy
    @player_mlb = PlayerMlb.find(params[:id])
    @player_mlb.destroy

    respond_to do |format|
      format.html { redirect_to player_mlbs_url }
      format.json { head :no_content }
    end
  end
end
