class ProducsController < ApplicationController
  before_action :set_produc, only: [:show, :edit, :update, :destroy]

  # GET /producs
  # GET /producs.json
  def index
    @producs = Produc.all
  end

  # GET /producs/1
  # GET /producs/1.json
  def show
  end

  # GET /producs/new
  def new
    @produc = Produc.new
  end

  # GET /producs/1/edit
  def edit
  end

  # POST /producs
  # POST /producs.json
  def create
    @produc = Produc.new(produc_params)

    respond_to do |format|
      if @produc.save
        format.html { redirect_to @produc, notice: 'Produc was successfully created.' }
        format.json { render :show, status: :created, location: @produc }
      else
        format.html { render :new }
        format.json { render json: @produc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producs/1
  # PATCH/PUT /producs/1.json
  def update
    respond_to do |format|
      if @produc.update(produc_params)
        format.html { redirect_to @produc, notice: 'Produc was successfully updated.' }
        format.json { render :show, status: :ok, location: @produc }
      else
        format.html { render :edit }
        format.json { render json: @produc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producs/1
  # DELETE /producs/1.json
  def destroy
    @produc.destroy
    respond_to do |format|
      format.html { redirect_to producs_url, notice: 'Produc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produc
      @produc = Produc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produc_params
      params.require(:produc).permit(:title, :description, :image_url, :price)
    end
end
