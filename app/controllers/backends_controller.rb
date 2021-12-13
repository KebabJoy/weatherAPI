# frozen_string_literal: true

class BackendsController < ApplicationController
  def health
    render plain: 'OK'
  end
end
