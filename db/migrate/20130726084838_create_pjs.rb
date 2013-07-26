class CreatePjs < ActiveRecord::Migration
  def change
    create_table :pjs do |t|
      t.string :pname
      t.integer :user_id

      t.timestamps
    end
  end
end
