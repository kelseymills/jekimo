class LogUserId
  def call(event)
    Rails.logger.info "LogUserId called with event: #{event.to_h}"
  end
end
