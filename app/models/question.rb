class Question < ApplicationRecord

  STRING_INPUT = "STRING_INPUT"
  CHECKBOX_CHOICE = "CHECKBOX_CHOICE"

  OPTIONS = [["String input", STRING_INPUT], ["Checkbox choice", CHECKBOX_CHOICE]]

  validates_inclusion_of :type, :in => OPTIONS

end
