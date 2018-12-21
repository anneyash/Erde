class Question < ApplicationRecord

  STRING_INPUT = "string_input"
  RADIOBUTTON_CHOICE = "radiobutton_choice"
  DATE = "date"

  QUESTION_TYPES = [STRING_INPUT, RADIOBUTTON_CHOICE, DATE]
  QUESTION_TYPE_CHOICE = [["String input", STRING_INPUT],
                          ["Radiobutton choice", RADIOBUTTON_CHOICE],
                          ["Date", DATE]]

  belongs_to :step
  has_many :question_options, dependent: :destroy
  has_many :answers

end
