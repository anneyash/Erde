class Form < ApplicationRecord
  has_many :steps, dependent: :destroy

  def get_step(current_step_id = nil)
    if current_step_id
      return self.steps.find(current_step_id)
    end
    return self.steps.order("order_id").first
  end
end
