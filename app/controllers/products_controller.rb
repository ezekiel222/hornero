class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :favorite]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # Add and remove favorite recipes
  # for current_user
  def favorite
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @product

    elsif type == "unfavorite"
      current_user.favorites.delete(@product)
      redirect_back fallback_location: root_path, notice: 'Unfavorited #{@recipe.name}'
    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :user_id, :category_id, :photo, :photo1, :photo2, :material_id)
    end
end
