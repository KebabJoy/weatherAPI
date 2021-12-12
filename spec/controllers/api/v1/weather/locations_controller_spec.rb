# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::Weather::LocationsController, type: :controller do
  describe 'GET /index' do
    before { get :index }

    it 'returns list of locations' do
      expect(response).to have_http_status(:ok)
    end
  end
end
