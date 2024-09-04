class BirthdayReminderJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.info "Sending birthday reminders..."
    sleep 2
    Rails.logger.info "Birthday reminders sent!"
  end
end
