class ProductsController < ApplicationController

    before_action :require_login, only: [:update]

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
      render json: Product.all.order("id"), status: :ok
    end

    def show
        render json: find_product, status: :ok
    end

    def update
      product = find_product
      product.update!(product_params)
      render json: product
    end

    private

    def product_params
      params.permit(:name, :desc, :price, :total_quantity, :image)
    end

    def find_product
      product = Product.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Product not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

end
