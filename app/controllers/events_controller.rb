class EventsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        render json: Event.all.order("id"), status: :ok
    end

    def create
        event = Event.create!(event_params)
        render json: event, status: :created
    end

    def destroy
        event = find_event
        event.destroy
        head :no_content
    end

    private

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "Event not found" }, status: :not_found
    end

    def event_params
        params.permit(:title, :time, :months, :map)
    end    

    def find_event
        Event.find(params[:id])
    end


end
