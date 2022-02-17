class ReviewsController < ApplicationController

    before_action :require_login, only: [:post]

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
      render json: Review.all.order("id"), status: :ok
    end

    def show
        render json: find_review, status: :ok
    end

    def update
      review = find_review
      Review.update!(review_params)
      render json: review
    end

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    def destroy
        review = find_review
        review.destroy
        head :no_content
    end

    private

    def review_params
      params.permit(:text, :rating, :user_id)
    end

    def find_review
      Review.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Review not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

end
