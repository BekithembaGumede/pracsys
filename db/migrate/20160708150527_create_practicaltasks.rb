class CreatePracticaltasks < ActiveRecord::Migration
  def change
    create_table :practicaltasks do |t|
      t.references :course, index: true, foreign_key: true
      t.string :taskname
      t.text :description
      t.datetime :duedate

      t.timestamps null: false
    end
    add_index :practicaltasks, :taskname, unique: true
  end
end
