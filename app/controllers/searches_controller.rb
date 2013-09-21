class SearchesController < ApplicationController

  def data_tables
    @query_response = PlayerMlb.scoped.limit(1)

    render new_post_path(:query_response => @query_response)
  end
end
