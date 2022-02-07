class ProductsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
      render json: Product.all, status: :ok
    end

    def show
        render json: find_product, status: :ok
    end

    private

    def find_product
      product = Product.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Product not found" }, status: :not_found
    end

end
