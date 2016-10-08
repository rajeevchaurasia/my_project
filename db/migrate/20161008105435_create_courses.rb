class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :body
      t.references :user, index: true
      t.timestamps
    end
  end
end
