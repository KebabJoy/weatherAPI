# frozen_string_literal: true

module Api
  module V1
    module Weather
      class TemperaturesController < Api::V1::BaseController
        def current
          response = ::Weather::HttpHelper.new(
            endpoint: "/currentconditions/v1/#{permitted_params[:location_key]}"
          ).get

          render json: response
        end

        private

        def permitted_params
          params.permit(:location_key).tap do |hash|
            hash[:location_key] = hash.require(:location_key)
          end
        end
      end
    end
  end
end
