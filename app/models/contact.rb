class Contact < ActiveRecord::Base
  attr_accessible :birthday, :email, :first_name, :last_name, :notes, :phone

  def to_s
    "#{first_name} #{last_name}"
  end
end
