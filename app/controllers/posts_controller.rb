class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new(post_params)
      
      #@post.user_id = current_user.id
  
      if @post.save
        puts "inside save if #{@post.inspect}"
        redirect_to post_path(@post), notice: 'Your post was created successfully'
      else
        render :new
      end
    end

    def show
      @post = Post.find(params[:id])
      puts "show post #{@post.inspect}"
    end

    def post_params
	  	params.require(:post).permit(:date, :rationale)
	  end

	  def set_post
	  	@post = Post.find(params[:id])
	  end
end
