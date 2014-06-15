class CreateTestRuns < ActiveRecord::Migration
  def change
    create_table :test_runs do |t|
      t.belongs_to :testsuite, index: true

      t.timestamps
    end
  end
end
