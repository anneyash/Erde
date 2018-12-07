class Question < ApplicationRecord
  # belongs_to :visa_applications
  # belongs_to :personal_information

  has_many :answers

  has_many :step_questions
  has_many :steps, through: :step_questions
end
