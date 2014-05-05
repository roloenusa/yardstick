class TestResult < ActiveRecord::Base
  belongs_to :test_run
  belongs_to :testcase

  def status
    if result.nil?
      :not_run
    elsif result
      :passed
    else
      :failed
    end
  end
end
