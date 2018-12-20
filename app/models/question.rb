class Question < ApplicationRecord

  STRING_INPUT = "string_input"
  CHECKBOX_CHOICE = "checkbox_choice"

  QUESTION_TYPES = [STRING_INPUT, CHECKBOX_CHOICE]
  QUESTION_TYPE_CHOICE = [["String input", STRING_INPUT], ["Checkbox choice", CHECKBOX_CHOICE]]

  belongs_to :step
  has_many :question_options, dependent: :destroy

end
