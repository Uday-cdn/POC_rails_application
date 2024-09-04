class ArgumentJob < ApplicationJob
  queue_as :default

  def perform(name, count)
    count.times do
      Rails.logger.info "Hello, #{name}!"
    end
  end
end
