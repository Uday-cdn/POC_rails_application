class ErrorHandlingJob < ApplicationJob
  queue_as :default

  def perform
    raise "Intentional error for testing"
  end
end
