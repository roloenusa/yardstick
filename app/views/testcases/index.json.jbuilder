json.array!(@testcases) do |testcase|
  json.extract! testcase, :id, :title, :description, :steps
  json.url testcase_url(testcase, format: :json)
end
