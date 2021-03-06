class LaunchesController < ApplicationController
  before_action :set_launch, only: [:show, :edit, :update, :destroy]

  # GET /launches
  # GET /launches.json
  def index
    @launches = Launch.all
  end

  # GET /launches/1
  # GET /launches/1.json
  def show
  end

  # GET /launches/new
  def new
    @launch = Launch.new
  end

  # GET /launches/1/edit
  def edit
  end

  # POST /launches
  # POST /launches.json
  def create
    @launch = Launch.new(launch_params)

    respond_to do |format|
      if @launch.save
        format.html { redirect_to @launch, notice: 'Launch was successfully created.' }
        format.json { render :show, status: :created, location: @launch }
      else
        format.html { render :new }
        format.json { render json: @launch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /launches/1
  # PATCH/PUT /launches/1.json
  def update
    respond_to do |format|
      if @launch.update(launch_params)
        format.html { redirect_to @launch, notice: 'Launch was successfully updated.' }
        format.json { render :show, status: :ok, location: @launch }
      else
        format.html { render :edit }
        format.json { render json: @launch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launches/1
  # DELETE /launches/1.json
  def destroy
    @launch.destroy
    respond_to do |format|
      format.html { redirect_to launches_url, notice: 'Launch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_launch
      @launch = Launch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def launch_params
      params.fetch(:launch, {})
    end
end
