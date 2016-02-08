class ProductBundlesController < ApplicationController
  before_action :set_product_bundle, only: [:show, :edit, :update, :destroy]

  def index
    @product_bundles = ProductBundle.all
  end

  def show
  end

  def new
    @product_bundle = ProductBundle.new
    @product_bundle.images.build
  end

  def edit
    @product_bundle.images.build
  end

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
      params.require(:product_bundle).permit(:product_category_id, :name, :description, :images_attributes => [:image, :imageable_type, :imageable_id, :_destroy])
    end
end
