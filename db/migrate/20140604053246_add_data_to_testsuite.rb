class AddDataToTestsuite < ActiveRecord::Migration
  def change
    add_column :testsuites, :data, :binary
  end
end
