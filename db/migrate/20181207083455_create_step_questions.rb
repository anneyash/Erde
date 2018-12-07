class CreateStepQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :step_questions do |t|
      t.integer :step_id
      t.integer :question_id
      t.integer :position

      t.timestamps
    end
  end
end
