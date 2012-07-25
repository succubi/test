class CreateModulls < ActiveRecord::Migration
  def change
    create_table :modulls do |t|
      t.string :name

      t.timestamps
    end
  end
end
