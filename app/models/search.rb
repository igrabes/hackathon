class Search < ActiveRecord::Base

  def self.query(params)
    search_terms = []
    search_terms.push(:first_name, :last_name)
    search_terms = search_terms.push(params[:search].collect {|k,v| k if v.to_i == 1}.compact!)

    @query_response = PlayerMlb.find(:all, :select =>  search_terms, :limit => 10)

  end
end

