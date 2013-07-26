class CreateBgs < ActiveRecord::Migration
  def change
    create_table :bgs do |t|
      t.string :bname
      t.string :priority
      t.integer :pj_id

      t.timestamps
    end
  end
end
