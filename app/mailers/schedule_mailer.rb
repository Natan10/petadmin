class ScheduleMailer < ApplicationMailer

  def service_schedule(schedule)
    @services = schedule.services
    @data = schedule.data
    @client = schedule.client.name
    @total = schedule.total
    mail to: schedule.client.email, subject: schedule.title
  end
end
