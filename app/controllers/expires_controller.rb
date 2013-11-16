class ExpiresController < ApplicationController
  before_action :set_expire, only: [:show, :edit, :update, :destroy]

  # GET /expires
  # GET /expires.json
  def index
    @expires = Expire.all
  end

  # GET /expires/1
  # GET /expires/1.json
  def show
  end

  # GET /expires/new
  def new
    @expire = Expire.new
  end

  # GET /expires/1/edit
  def edit
  end

  # POST /expires
  # POST /expires.json
  def create
    @expire = Expire.new(expire_params)

    respond_to do |format|
      if @expire.save
        format.html { redirect_to @expire, notice: 'Expire was successfully created.' }
        format.json { render action: 'show', status: :created, location: @expire }
      else
        format.html { render action: 'new' }
        format.json { render json: @expire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expires/1
  # PATCH/PUT /expires/1.json
  def update
    respond_to do |format|
      if @expire.update(expire_params)
        format.html { redirect_to @expire, notice: 'Expire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @expire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expires/1
  # DELETE /expires/1.json
  def destroy
    @expire.destroy
    respond_to do |format|
      format.html { redirect_to expires_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expire
      @expire = Expire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expire_params
      params.require(:expire).permit(:food, :lifedate, :fridge, :freezer)
    end
end
