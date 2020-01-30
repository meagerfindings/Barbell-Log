class CreateSession < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions, id: :uuid do |t|
      t.uuid :trainee_id
      t.uuid :coach_id
      t.text :trainee_notes
      t.text :coach_notes
      t.boolean :completed
      t.timestamp :completed_at
      t.date :due_date
      t.timestamps
    end
  end
end
