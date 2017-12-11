class StarchesController < ApplicationController
  before_action :set_starch, only: [:show, :edit, :update, :destroy]

  # GET /starches
  # GET /starches.json
  def index
    @starches = Starch.all
  end

  # GET /starches/1
  # GET /starches/1.json
  def show
  end

  # GET /starches/new
  def new
    @starch = Starch.new
  end

  # GET /starches/1/edit
  def edit
  end

  # POST /starches
  # POST /starches.json
  def create
    @starch = Starch.new(starch_params)

    respond_to do |format|
      if @starch.save
        format.html { redirect_to @starch, notice: 'Starch was successfully created.' }
        format.json { render :show, status: :created, location: @starch }
      else
        format.html { render :new }
        format.json { render json: @starch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starches/1
  # PATCH/PUT /starches/1.json
  def update
    respond_to do |format|
      if @starch.update(starch_params)
        format.html { redirect_to @starch, notice: 'Starch was successfully updated.' }
        format.json { render :show, status: :ok, location: @starch }
      else
        format.html { render :edit }
        format.json { render json: @starch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starches/1
  # DELETE /starches/1.json
  def destroy
    @starch.destroy
    respond_to do |format|
      format.html { redirect_to starches_url, notice: 'Starch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starch
      @starch = Starch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def starch_params
      params.require(:starch).permit(:name)
    end
end
