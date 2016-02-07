class ProductBundlesController < ApplicationController
  before_action :set_product_bundle, only: [:show, :edit, :update, :destroy]

  # GET /product_bundles
  # GET /product_bundles.json
  def index
    @product_bundles = ProductBundle.all
  end

  # GET /product_bundles/1
  # GET /product_bundles/1.json
  def show
  end

  # GET /product_bundles/new
  def new
    @product_bundle = ProductBundle.new
  end

  # GET /product_bundles/1/edit
  def edit
  end

  # POST /product_bundles
  # POST /product_bundles.json
  def create
    @product_bundle = ProductBundle.new(product_bundle_params)

    respond_to do |format|
      if @product_bundle.save
        format.html { redirect_to @product_bundle, notice: 'Product bundle was successfully created.' }
        format.json { render :show, status: :created, location: @product_bundle }
      else
        format.html { render :new }
        format.json { render json: @product_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_bundles/1
  # PATCH/PUT /product_bundles/1.json
  def update
    respond_to do |format|
      if @product_bundle.update(product_bundle_params)
        format.html { redirect_to @product_bundle, notice: 'Product bundle was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_bundle }
      else
        format.html { render :edit }
        format.json { render json: @product_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_bundles/1
  # DELETE /product_bundles/1.json
  def destroy
    @product_bundle.destroy
    respond_to do |format|
      format.html { redirect_to product_bundles_url, notice: 'Product bundle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_bundle
      @product_bundle = ProductBundle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_bundle_params
      params.require(:product_bundle).permit(:category_id, :name, :description)
    end
end
