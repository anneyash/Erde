class Form < ApplicationRecord
  has_many :questions, dependent: :destroy


  def get_questions_by_step(current_step = 1)
    return self.questions.where(["step = :step", {step: current_step}])
  end
end
