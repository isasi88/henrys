class SubservicesController < ApplicationController
	 before_action :set_subservice, only: [:show, :edit, :update, :destroy]

  # GET /subservices.json
  def index
    @service = Service.find(params[:service_id])
    @subservices = @service.subservices.all
  end

  # GET /subservices/1
  # GET /subservices/1.json
  def show
    @subservices = Subservice.all
    @subservice = Subservice.find(params[:id])
  end

  # GET /subservices/new
  def new
  	@service = Service.find(params[:service_id])
    @subservice = Subservice.new
  end

  # GET /subservices/1/edit
  def edit
    @service = Service.find(params[:service_id])
    @subservice = Subservice.find(params[:id])
  end

  def create
    @service = Service.find(params[:service_id])
    @subservice = Subservice.new(subservice_params)
    if @subservice.save
      redirect_to :root, notice: 'Good'
    else
      flash[:notice] = "No se ha podido guardar el subservice"
      render :new
    end
  end

# PATCH/PUT /subservices/1
  # PATCH/PUT /subservices/1.json
  def update
    @service = Service.find(params[:service_id])
    @subservice = Subservice.find(params[:id])
    respond_to do |format|
      if @subservice.update(subservice_params)
        format.html { redirect_to service_subservices_path, notice: 'subservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @subservice }
      else
        format.html { render :edit }
        format.json { render json: @subservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subservices/1
  # DELETE /subservices/1.json
  def destroy
    @subservice.destroy
    respond_to do |format|
      format.html { redirect_to subservices_url, notice: 'subservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subservice
      @service = Service.find(params[:service_id])
      @subservice = Subservice.find(params[:id])
    end

    def subservice_params
      params.require(:subservice).permit(:id,:name,:service_id,:description,:subicon)
    end
end
