class CreateVisaAppOnes < ActiveRecord::Migration[5.2]
  def change
    create_table :visa_app_ones do |t|
      t.string :q1
      t.string :q2
      t.text :q3
      t.string :q4

      t.timestamps
    end
  end
end
