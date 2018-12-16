class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.belongs_to :step, index: true, null: false
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
