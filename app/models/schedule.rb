class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :schedule_services, dependent: :destroy
  has_many :services, through: :schedule_services

  belongs_to :client

  before_save :set_val_total
  after_save :send_email


  def fae_display_field
    id
  end

  def self.for_fae_index
    order(:id)
  end
  
  private

  def set_val_total
    total = 0
    self.services.each { |s| total += s.price }
    self.total = total
  end

  def send_email
    ScheduleJob.perform_now self
  end

end
