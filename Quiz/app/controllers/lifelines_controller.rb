class LifelinesController < ApplicationController
  before_action :set_lifeline, only: [:show, :edit, :update, :destroy]

  # GET /lifelines
  # GET /lifelines.json
  def index
    @lifelines = Lifeline.all
  end

  # GET /lifelines/1
  # GET /lifelines/1.json
  def show
  end

  # GET /lifelines/new
  def new
    @lifeline = Lifeline.new
  end

  # GET /lifelines/1/edit
  def edit
  end

  # POST /lifelines
  # POST /lifelines.json
  def create
    @lifeline = Lifeline.new(lifeline_params)

    respond_to do |format|
      if @lifeline.save
        format.html { redirect_to @lifeline, notice: 'Lifeline was successfully created.' }
        format.json { render :show, status: :created, location: @lifeline }
      else
        format.html { render :new }
        format.json { render json: @lifeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifelines/1
  # PATCH/PUT /lifelines/1.json
  def update
    respond_to do |format|
      if @lifeline.update(lifeline_params)
        format.html { redirect_to @lifeline, notice: 'Lifeline was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifeline }
      else
        format.html { render :edit }
        format.json { render json: @lifeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifelines/1
  # DELETE /lifelines/1.json
  def destroy
    @lifeline.destroy
    respond_to do |format|
      format.html { redirect_to lifelines_url, notice: 'Lifeline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifeline
      @lifeline = Lifeline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifeline_params
      params.fetch(:lifeline, {})
    end
end
