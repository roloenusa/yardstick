class TestRun < ActiveRecord::Base
  belongs_to :testsuite
  has_many :test_results

  def revise_testcases
    testcases = self.testsuite.testcases
    test_results = self.test_results
    mia = get_missing_test_results(test_results, testcases)
    mia.each { |t| t.save }
  end

  def get_missing_test_results(test_results, testcases)
    result_ids = test_results.collect &:testcase_id

    testcases.reduce([]) do |acc, testcase|
      unless result_ids.include?(testcase.id)
        tr = TestResult.new
        tr.testcase_id = testcase.id
        tr.test_run_id = self.id
        acc << tr
      end
      acc
    end
  end
end
