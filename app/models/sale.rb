class Sale < ActiveRecord::Base
  belongs_to :customer, class_name: 'Contact'
  attr_accessible :amount, :paid_at, :customer_id
end
