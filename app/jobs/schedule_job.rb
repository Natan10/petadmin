class ScheduleJob < ApplicationJob
  queue_as :emails
 
  def perform(schedule)
    ScheduleMailer.service_schedule(schedule).deliver_now
  end
end
