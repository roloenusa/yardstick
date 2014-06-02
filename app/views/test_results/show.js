$("#test_result_<%= @test_result.id %>").replaceWith("<%= j render partial: 'test_results/table_row', locals: {test_result: @test_result } %>");
