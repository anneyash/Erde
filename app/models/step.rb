class Step < ApplicationRecord
  belongs_to :form
  has_many :questions, dependent: :destroy


  def get_next()
    return Step.where(["order_id > :order_id and form_id = :form_id", {order_id: self.order_id, form_id: self.form_id}]).first
  end

  def progress_percentage
    form_steps_ids = self.form.steps.map(&:id)
    current_position = form_steps_ids.index(self.id) + 1
    percentage = 100 / form_steps_ids.length * current_position
    return percentage
  end
end
