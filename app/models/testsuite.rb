class Testsuite < ActiveRecord::Base

  has_many :test_relations
  has_many :testcases, through: :test_relations
end
