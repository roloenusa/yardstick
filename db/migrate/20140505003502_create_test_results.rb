class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.belongs_to :test_run, index: true
      t.belongs_to :testcase, index: true
      t.boolean :result
      t.text :notes

      t.timestamps
    end
  end
end
