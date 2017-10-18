class ChoicesController < ApplicationController
  before_action :set_choice, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /choices
  # GET /choices.json

  def index
    set_question
    @choices = @question.choices.all
  end

  def all
    @choices = Choice.all
  end
  # GET /choices/1
  # GET /choices/1.json
  def show
  end

  def new_choice
    @choice = Choice.new
  end

  # GET /choices/new
  def new
    @choice = Choice.new
  end

  # GET /choices/1/edit
  def edit
  end

  # POST /choices
  # POST /choices.json
  def create
    if current_user.admin
    set_question
    @choice = Choice.new(choice_params)
    @choice.question_id = @question.id
    @choice.save

    respond_to do |format|
      if @choice.save
        format.html { redirect_to @choice, notice: 'Choice was successfully created.' }
        format.json { render :show, status: :created, location: @choice }
      else
        format.html { render :new }
        format.json { render json: @choice.errors, status: :unprocessable_entity }
      end
    end
  end
end
  # PATCH/PUT /choices/1
  # PATCH/PUT /choices/1.json
  def update
    if current_user.admin
    respond_to do |format|
      if @choice.update(choice_params)
        format.html { redirect_to @choice, notice: 'Choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @choice }
      else
        format.html { render :edit }
        format.json { render json: @choice.errors, status: :unprocessable_entity }
      end
    end
  end
end
  # DELETE /choices/1
  # DELETE /choices/1.json
  def destroy
    if current_user.admin
    @choice.destroy
    respond_to do |format|
      format.html { redirect_to choices_url, notice: 'Choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice
      @choice = Choice.find(params[:id])
    end

    def set_question
      @question = Question.find(params[:question_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_params
      params.require(:choice).permit(:option_desc, :correct)
    end
end
