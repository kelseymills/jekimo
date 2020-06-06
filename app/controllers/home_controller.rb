class HomeController < ApplicationController
  # TODO: Remove when you remove ping
  skip_before_action :verify_authenticity_token, only: [:ping]

  def index; end

  def ping
    @response_data = {
      headers: response.headers,
      body: response.body,
      status: response.status
    }

    Rails.logger.info "Response received to ping endpoint: #{@response_data}"

    respond_to do |format|
      format.html
      format.json
    end
  end

  def ui; end
end
