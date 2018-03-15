class WobsController < ApplicationController
  before_action :set_wob, only: [:show, :edit, :update, :destroy]

  # GET /wobs
  # GET /wobs.json
  def index
    @wobs = Wob.all
  end

  # GET /wobs/1
  # GET /wobs/1.json
  def show
  end

  # GET /wobs/new
  def new
    @wob = Wob.new
  end

  # GET /wobs/1/edit
  def edit
  end

  # POST /wobs
  # POST /wobs.json
  def create
    @wob = Wob.new(wob_params)
    @wob.user = current_user
    respond_to do |format|
      if @wob.save
        format.html { redirect_to @wob, notice: 'Wob was successfully created.' }
        format.json { render :show, status: :created, location: @wob }
      else
        format.html { render :new }
        format.json { render json: @wob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wobs/1
  # PATCH/PUT /wobs/1.json
  def update
    render status: :forbidden unless @wob.user == current_user
    respond_to do |format|
      if @wob.update(wob_params)
        format.html { redirect_to @wob, notice: 'Wob was successfully updated.' }
        format.json { render :show, status: :ok, location: @wob }
      else
        format.html { render :edit }
        format.json { render json: @wob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wobs/1
  # DELETE /wobs/1.json
  def destroy
    render status: :forbidden unless @wob.user == current_user
    @wob.destroy
    respond_to do |format|
      format.html { redirect_to wobs_url, notice: 'Wob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wob
      @wob = Wob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wob_params
      params.require(:wob).permit(:text)
    end
end
