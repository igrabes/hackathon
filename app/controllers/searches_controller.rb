class SearchesController < ApplicationController

  def data_tables
    @query_response = PlayerMlb.scoped.limit(1)

    render new_post_path(:query_response => @query_response)
  end

  def save_table
    if params[:search]
      @query_response = Search.query(params)
      @query_keys = @query_response.first.attributes.collect { |player_attribute,player_value| player_attribute }
    end

    html = render_to_string :partial => 'searches/data_tables', :local => { :query_reseponse => @query_response}

    PostData.create!(:table_html => html)


  end
end
