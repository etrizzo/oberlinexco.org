class ExcosController < ApplicationController
  # GET /excos
  # GET /excos.json
  def index
    @excos = Exco.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @excos }
    end
  end

  # GET /excos/1
  # GET /excos/1.json
  def show
    @exco = Exco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exco }
    end
  end

  # GET /excos/new
  # GET /excos/new.json
  def new
    @exco = Exco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exco }
    end
  end

  # GET /excos/1/edit
  def edit
    @exco = Exco.find(params[:id])
  end

  # POST /excos
  # POST /excos.json
  def create
    @exco = Exco.new(params[:exco])

    respond_to do |format|
      if @exco.save
        format.html { redirect_to @exco, notice: 'Exco was successfully created.' }
        format.json { render json: @exco, status: :created, location: @exco }
      else
        format.html { render action: "new" }
        format.json { render json: @exco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /excos/1
  # PUT /excos/1.json
  def update
    @exco = Exco.find(params[:id])

    respond_to do |format|
      if @exco.update_attributes(params[:exco])
        format.html { redirect_to @exco, notice: 'Exco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excos/1
  # DELETE /excos/1.json
  def destroy
    @exco = Exco.find(params[:id])
    @exco.destroy

    respond_to do |format|
      format.html { redirect_to excos_url }
      format.json { head :no_content }
    end
  end
end