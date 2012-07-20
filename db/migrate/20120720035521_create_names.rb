class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :type
      t.string :initial
      t.string :full

      t.timestamps
    end
  end
end
