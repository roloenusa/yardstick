class Testsuite < ActiveRecord::Base

  serialize :data, JSON

  before_save :default_values

  attr_accessor :testcases

  def testcases
    self.data
  end

  def default_values
    self.data ||= []
  end
end
