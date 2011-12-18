class CreateSubject < ActiveRecord::Migration
  def up
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.integer :mark_id

      t.timestamps
    end
  end

  def down
		drop_table :subjects
  end
end
