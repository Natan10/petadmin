require 'test_helper'

class ScheduleMailerTest < ActionMailer::TestCase
  test "service_schedule" do
    mail = ScheduleMailer.service_schedule
    assert_equal "Service schedule", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
