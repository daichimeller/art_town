class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :title

      t.timestamps
    end
  end
end
