class AppointmentForm

  include Virtus

  attribute :customer, Contact
  attribute :occurs_at, DateTime
  attribute :service, String
  attribute :cost, BigDecimal
  attribute :weeks_before_next, Integer
  attribute :paid_at, Date

  # Rails 4: include ActiveModel::Model
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  def initialize(appointment)
    @appointment = appointment
  end

  def persisted?
    false
  end

end
