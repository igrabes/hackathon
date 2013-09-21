class Search < ActiveRecord::Base

  def self.query(params)
    search_terms = []
    search_terms = params[:search].collect {|k,v| k if v.to_i == 1}.compact! if params[:search]
    search_terms.push(:first_name, :last_name) if params[:search]

    @query_response = PlayerMlb.find(:all, :select =>  search_terms, :limit => 10)

  end
end

