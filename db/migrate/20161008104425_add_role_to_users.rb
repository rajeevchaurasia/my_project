class AddRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string
    add_column :users, :course_id, :integer
    add_column :users, :student_id, :integer
  end
end
