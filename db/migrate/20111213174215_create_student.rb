class CreateStudent < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :full_name
      t.string :seat_no
      t.string :rank

      t.timestamps
    end
  end

  def down
		drop_table :students
  end
end
