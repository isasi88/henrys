class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services.json
  def index
    @budget = Budget.new
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @budget = Budget.new
    @services = Service.all
    @service = Service.find(params[:id])
  end

  # GET /services/new
  def new
    @service = Service.new
    @service.subservices.build if @service.subservices.blank?
  end

  # GET /services/1/edit
  def edit
    @service = Service.find(params[:id])
    @service.subservices.build if @service.subservices.blank?
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to :root, notice: 'Good'
    else
      flash[:notice] = "No se ha podido guardar el service"
      render :new
    end
  end

# PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    @service = Service.find(params[:id])
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_path, notice: 'service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:id,:name,:description,:slogan, :teaser, subservices_attributes: [:subicon,:name,:description])
    end
end
