class Appointment < ActiveRecord::Base
  belongs_to :customer, class_name: 'Contact'
  accepts_nested_attributes_for :customer

  attr_accessible :cost, :occurs_at, :paid_at, :service, :customer_id, :weeks_before_next

  validates_presence_of :occurs_at
  validates_presence_of :customer

end
