class CreateHabitants < ActiveRecord::Migration
  def change
    create_table :habitants do |t|
      t.string :name
      t.string :password
      t.string :mail_address

      t.timestamps
    end
  end
end
