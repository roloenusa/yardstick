json.array!(@testsuites) do |testsuite|
  json.extract! testsuite, :id, :title, :description
  json.url testsuite_url(testsuite, format: :json)
end
