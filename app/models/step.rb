class Step < ApplicationRecord
  has_many :visa_application_form_steps
  has_many :visa_application_form, through: :visa_application_form_steps

  has_many :step_questions
  has_many :questions, through: :step_questions
end
