class TestRun < ActiveRecord::Base
  belongs_to :testsuite
  has_many :test_results

  after_create :populate_testcases

  def populate_testcases
    testcases = self.testsuite.testcases

    testcases.each do |testcase|
      tr = TestResult.new
      tr.testcase_id = testcase.id
      tr.test_run_id = self.id
      tr.save
    end
  end
end
