class AccordsController < ApplicationController
  # GET /accords
  # GET /accords.json
  def index
    @accords = Accord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accords }
    end
  end

  # GET /accords/1
  # GET /accords/1.json
  def show
    @accord = Accord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accord }
    end
  end

  # GET /accords/new
  # GET /accords/new.json
  def new
    @accord = Accord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accord }
    end
  end

  # GET /accords/1/edit
  def edit
    @accord = Accord.find(params[:id])
  end

  # POST /accords
  # POST /accords.json
  def create
    @accord = Accord.new(params[:accord])

    respond_to do |format|
      if @accord.save
        format.html { redirect_to @accord, notice: 'Accord was successfully created.' }
        format.json { render json: @accord, status: :created, location: @accord }
      else
        format.html { render action: "new" }
        format.json { render json: @accord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accords/1
  # PUT /accords/1.json
  def update
    @accord = Accord.find(params[:id])

    respond_to do |format|
      if @accord.update_attributes(params[:accord])
        format.html { redirect_to @accord, notice: 'Accord was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accords/1
  # DELETE /accords/1.json
  def destroy
    @accord = Accord.find(params[:id])
    @accord.destroy

    respond_to do |format|
      format.html { redirect_to accords_url }
      format.json { head :no_content }
    end
  end
end
