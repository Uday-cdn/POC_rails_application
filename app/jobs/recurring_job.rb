class RecurringJob < ApplicationJob
  queue_as :default

  def perform
    Rails.logger.info "Generating and sending a report..."
  end
end
