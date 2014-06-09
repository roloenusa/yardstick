class Testsuite < ActiveRecord::Base

  serialize :data, JSON

  before_save :default_values

  def default_values
    self.data ||= []
  end
end
