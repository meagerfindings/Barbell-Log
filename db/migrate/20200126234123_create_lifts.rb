class CreateLifts < ActiveRecord::Migration[6.0]
  def change
    create_table :lifts do |t|
      t.uuid :session_id
      t.text :notes
      t.timestamps
    end
  end
end
