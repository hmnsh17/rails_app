class ServantsController < ApplicationController
  before_action :set_servant, only: %i[ show edit update destroy ]

  # GET /servants or /servants.json
  def index
    @servants = Servant.all
  end

  # GET /servants/1 or /servants/1.json
  def show
  end

  # GET /servants/new
  def new
    @servant = Servant.new
  end

  # GET /servants/1/edit
  def edit
  end

  # POST /servants or /servants.json
  def create
    @servant = Servant.new(servant_params)

    respond_to do |format|
      if @servant.save
        format.html { redirect_to servant_url(@servant), notice: "Servant was successfully created." }
        format.json { render :show, status: :created, location: @servant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @servant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servants/1 or /servants/1.json
  def update
    respond_to do |format|
      if @servant.update(servant_params)
        format.html { redirect_to servant_url(@servant), notice: "Servant was successfully updated." }
        format.json { render :show, status: :ok, location: @servant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @servant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servants/1 or /servants/1.json
  def destroy
    @servant.destroy

    respond_to do |format|
      format.html { redirect_to servants_url, notice: "Servant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servant
      @servant = Servant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servant_params
      params.require(:servant).permit(:name, :phone)
    end
end
