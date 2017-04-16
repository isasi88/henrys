class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]
  # GET /works.json
  def index
    @budget = Budget.new
    @works = Work.all
  end

  # GET /works/1
  # GET /works/1.json
  def show
    @budget = Budget.new
    @work = Work.find(params[:id])
  end

  # GET /works/new
  def new
    @budget = Budget.new
    @work = Work.new
  end

  # GET /works/1/edit
  def edit
    @budget = Budget.new
    @work = Work.find(params[:id])
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to :root, notice: 'Good'
    else
      flash[:notice] = "No se ha podido guardar el work"
      render :new
    end
  end

# PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    @budget = Budget.new
    @work = Work.find(params[:id])
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to works_path, notice: 'work was successfully updated.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    def work_params
      params.require(:work).permit(:id,:title,:brief, :cover)
    end
end
