class Testcase < ActiveRecord::Base

  has_many :test_relations
  has_many :testsuites, through: :test_relations
end
