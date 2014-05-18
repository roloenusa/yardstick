class TestResult < ActiveRecord::Base
  belongs_to :test_run
  belongs_to :testcase

  def status
    case result
    when true then :passed
    when false then :failed
    else :pending
    end
  end
end
