class BasicJob < ApplicationJob
  queue_as :default

  def perform
    Rails.logger.info "BasicJob is executing!"
  end
end
