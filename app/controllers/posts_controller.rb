class PostsController < ApplicationController
  def new
  	  #空のモデルをビューへ渡す
  	  @post = Post.new
  end

  	  #追加
  	  def create
  	  	  # ストロングバラメーターを使用
  	  	  post = Post.new(post_params)
  	  	  # DBへ保存する
  	  	  post.save
  	  	  # トップ画面へリダイレクト
  	  	  redirect_to post_path(post.id)
  	  end

  	  def index
  	  	@posts = Post.all

  	  end

  	  def show
  	  	  @post = Post.find(params[:id])

  	  end

  	  private

  	  def post_params
  	  	  params.require(:post).permit(:title, :body)
  	  end


end
