class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :coursecode
      t.string :name
      t.text :description
      t.string :duration

      t.timestamps null: false
    end
  end
end
