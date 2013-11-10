ActiveAdmin.register Appointment do

  index do
    column :customer
    column :service
    column :cost
    column :paid_at
    column :weeks_before_next
  end

  form do |f|
    f.inputs "Details" do
      f.input :customer
      f.input :occurs_at, as: :date_picker
      f.input :service, as: :check_boxes, collection: %w(
        Cut
        Colour
        Perm
      )
      f.input :cost
      f.input :weeks_before_next
      f.input :paid_at, as: :date_picker
    end
  end

  controller do

    def new
      super do |format|
        @appointment = AppointmentForm.new(@appointment)
      end
    end
  end
end
