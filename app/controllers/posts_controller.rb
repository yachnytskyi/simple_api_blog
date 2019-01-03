class PostsController < ApplicationController
  before_action :set_category
  before_action :set_category_post, only: [:show, :update, :destroy]

  # GET /categories/:category_id/posts
  def index
    json_response(@category.posts)
  end

  # GET /categories/:category_id/posts:id
  def show
    json_response(@post)
  end

  # POST /categories/:category_id/posts
  def create
    @category.posts.create!(post_params)
    json_response(@post, :created)
  end

  # PUT /categories/:category_id/posts
  def update
    @post.update(post_params)
    head :no_content
  end

  # DELETE /categories/:category_id/posts/:id
  def destroy
    @post.destroy
    head :no_content
  end

  private

  def post_params
    params.permit(:title, :body)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_category_post
    @post = @category.posts.find_by!(id: params[:id]) if @category
  end
end
