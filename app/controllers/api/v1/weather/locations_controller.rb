# frozen_string_literal: true

module Api
  module V1
    module Weather
      class LocationsController < Api::V1::BaseController
        def index
          response = ::Weather::HttpHelper.new(
            endpoint: '/locations/v1/regions?', params: permitted_params
          ).get

          render json: response
        end

        private

        def permitted_params
          params.permit(:language)
        end
      end
    end
  end
end
