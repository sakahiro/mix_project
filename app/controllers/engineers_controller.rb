class EngineersController < ApplicationController
  before_action :set_engineer, only: [:show, :edit, :update, :destroy]

  # GET /engineers
  # GET /engineers.json
  def index
    @engineers = Engineer.all
  end

  # GET /engineers/1
  # GET /engineers/1.json
  def show
  end

  # GET /engineers/new
  def new
    @engineer = Engineer.new
  end

  # GET /engineers/1/edit
  def edit
  end

  # POST /engineers
  # POST /engineers.json
  def create
    @user = User.find(current_user)
    @engineer = @user.build_engineer(engineer_params)

    respond_to do |format|
      if @user.engineer.save
        format.html { redirect_to @engineer, notice: 'engineer was successfully created.' }
        format.json { render :show, status: :created, location: @engineer }
      else
        format.html { render :new }
        format.json { render json: @engineer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engineers/1
  # PATCH/PUT /engineers/1.json
  def update
    respond_to do |format|
      if @engineer.update(engineer_params)
        format.html { redirect_to @engineer, notice: 'engineer was successfully updated.' }
        format.json { render :show, status: :ok, location: @engineer }
      else
        format.html { render :edit }
        format.json { render json: @engineer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engineers/1
  # DELETE /engineers/1.json
  def destroy
    @engineer.destroy
    respond_to do |format|
      format.html { redirect_to engineers_url, notice: 'engineer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engineer
      @engineer = Engineer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engineer_params
      params.require(:engineer).permit(:history, :product1, :product2, :language_list)
    end
end
