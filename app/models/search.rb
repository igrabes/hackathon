class Search < ActiveRecord::Base

  def self.query(params)
    search_terms = []
    sort_by = []

    sort_direction = params[:sort_direction].to_i == 2 ? "DESC" : "ASC"

    search_terms.push(:first_name, :last_name)
    search_terms = search_terms.push(params[:search].collect {|k,v| k if v.to_i == 1}.compact!).flatten!

    search_terms.delete("save_table")

    sort_by = sort_by.push(params[:search_sort].collect {|k,v| k if v.to_i == 1}.compact!).flatten!

    sort_by_query = "#{sort_by[0]} #{sort_direction}"

    search_terms.flatten!
    @query_response = PlayerMlb.where("#{sort_by[0]} is not null").find(:all, :select =>  search_terms, :limit => 100, :order => sort_by_query)

  end
end

