class HabitantsController < ApplicationController
  before_action :set_habitant, only: [:show, :edit, :update, :destroy]

  # GET /habitants
  # GET /habitants.json
  def index
    @habitants = Habitant.all
  end

  # GET /habitants/1
  # GET /habitants/1.json
  def show
  end

  # GET /habitants/new
  def new
    @habitant = Habitant.new
  end

  # GET /habitants/1/edit
  def edit
  end

  # POST /habitants
  # POST /habitants.json
  def create
    @habitant = Habitant.new(habitant_params)

    respond_to do |format|
      if @habitant.save
        format.html { redirect_to @habitant, notice: 'Habitant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @habitant }
      else
        format.html { render action: 'new' }
        format.json { render json: @habitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habitants/1
  # PATCH/PUT /habitants/1.json
  def update
    respond_to do |format|
      if @habitant.update(habitant_params)
        format.html { redirect_to @habitant, notice: 'Habitant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @habitant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habitants/1
  # DELETE /habitants/1.json
  def destroy
    @habitant.destroy
    respond_to do |format|
      format.html { redirect_to habitants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habitant
      @habitant = Habitant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habitant_params
      params.require(:habitant).permit(:name, :password, :mail_address)
    end
end
