class ProffesionsController < ApplicationController
  before_action :set_proffesion, only: [:show, :edit, :update, :destroy]

  # GET /proffesions
  # GET /proffesions.json
  def index
    @proffesions = Proffesion.all
  end

  # GET /proffesions/1
  # GET /proffesions/1.json
  def show
  end

  # GET /proffesions/new
  def new
    @proffesion = Proffesion.new
  end

  # GET /proffesions/1/edit
  def edit
  end

  # POST /proffesions
  # POST /proffesions.json
  def create
    @proffesion = Proffesion.new(proffesion_params)

    respond_to do |format|
      if @proffesion.save
        format.html { redirect_to @proffesion, notice: 'Proffesion was successfully created.' }
        format.json { render :show, status: :created, location: @proffesion }
      else
        format.html { render :new }
        format.json { render json: @proffesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proffesions/1
  # PATCH/PUT /proffesions/1.json
  def update
    respond_to do |format|
      if @proffesion.update(proffesion_params)
        format.html { redirect_to @proffesion, notice: 'Proffesion was successfully updated.' }
        format.json { render :show, status: :ok, location: @proffesion }
      else
        format.html { render :edit }
        format.json { render json: @proffesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proffesions/1
  # DELETE /proffesions/1.json
  def destroy
    @proffesion.destroy
    respond_to do |format|
      format.html { redirect_to proffesions_url, notice: 'Proffesion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proffesion
      @proffesion = Proffesion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proffesion_params
      params.require(:proffesion).permit(:name)
    end
end
