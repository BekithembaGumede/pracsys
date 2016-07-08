class PracticaltasksController < ApplicationController
  before_action :set_practicaltask, only: [:show, :edit, :update, :destroy]

  # GET /practicaltasks
  # GET /practicaltasks.json
  def index
    @practicaltasks = Practicaltask.all
  end

  # GET /practicaltasks/1
  # GET /practicaltasks/1.json
  def show
  end

  # GET /practicaltasks/new
  def new
    @practicaltask = Practicaltask.new
  end

  # GET /practicaltasks/1/edit
  def edit
  end

  # POST /practicaltasks
  # POST /practicaltasks.json
  def create
    @practicaltask = Practicaltask.new(practicaltask_params)

    respond_to do |format|
      if @practicaltask.save
        format.html { redirect_to @practicaltask, notice: 'Practicaltask was successfully created.' }
        format.json { render :show, status: :created, location: @practicaltask }
      else
        format.html { render :new }
        format.json { render json: @practicaltask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practicaltasks/1
  # PATCH/PUT /practicaltasks/1.json
  def update
    respond_to do |format|
      if @practicaltask.update(practicaltask_params)
        format.html { redirect_to @practicaltask, notice: 'Practicaltask was successfully updated.' }
        format.json { render :show, status: :ok, location: @practicaltask }
      else
        format.html { render :edit }
        format.json { render json: @practicaltask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practicaltasks/1
  # DELETE /practicaltasks/1.json
  def destroy
    @practicaltask.destroy
    respond_to do |format|
      format.html { redirect_to practicaltasks_url, notice: 'Practicaltask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practicaltask
      @practicaltask = Practicaltask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practicaltask_params
      params.require(:practicaltask).permit(:course_id, :taskname, :description, :duedate)
    end
end
