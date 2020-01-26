class CreateLiftSets < ActiveRecord::Migration[6.0]
  def change
    create_table :lift_sets do |t|
      t.bigint  :reps
      t.float  :weight
      t.timestamps
    end
  end
end
