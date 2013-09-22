class PostsController < ApplicationController

  before_filter :auth_user, only: [:new, :create, :update, :edit]

  def index
    @posts = Post.all.sort_by {|post| post.score}.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def splash
  end

  def show
    @post = Post.find(params[:id])
    @table = PostData.where(:post_id => @post.id).first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  #TODO user_id is not being saved
  def new
    @post = Post.new
    @leagues = League.all

    if params[:search]
      @query_response = Search.query(params)
      @query_keys = @query_response.first.attributes.collect { |player_attribute, player_value| player_attribute }
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create

    @post = current_user.posts.build(params[:post])

    respond_to do |format|
      if @post.save
        if params[:search][:save_table].to_i == 1
          if params[:search]
            @query_response = Search.query(params)
            @query_keys = @query_response.first.attributes.collect { |player_attribute,player_value| player_attribute }
          end
          html = render_to_string :partial => 'searches/data_tables', :local => { :query_reseponse => @query_response}

          PostData.create!(:table_html => html, :post_id => @post.id)
        end
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    table_params = params["post"]
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  def upvote
    @post = Post.find(params[:id])
    @post.score = @post.try(:score) == nil ? 0 : @post.score.try(:+, 1)
    @post.save!
    redirect_to posts_url
  end

  def downvote
    @post = Post.find(params[:id])
    @post.score = @post.try(:score) == nil ? 0 - 1 : @post.score.try(:-, 1)
    @post.save!
    redirect_to posts_url
  end
end
