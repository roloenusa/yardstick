json.array!(@test_results) do |test_result|
  json.extract! test_result, :id, :test_run_id, :testcase_id, :result, :notes
  json.url test_result_url(test_result, format: :json)
end
