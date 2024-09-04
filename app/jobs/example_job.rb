class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep 5
    Rails.logger.info "ExampleJob is done!"
  end
end
