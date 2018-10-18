class PostsController < ApplicationController

  # Run the check_if_logged_in method in application_controller.rb
  # which redirects users to the login page if they are not logged
  # in - they need to be logged in to create and edit mixtapes
  # (because mixtapes belong_to users)
  # BUT they don't have to login to browse the mixtapes,
  # i.e. index and show actions
  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @post = Post.new
  end

  def create
    # Multi-step way to create a new Post record in the database
    # for when we have to add some data that is not in the submitted
    # form (i.e., the user ID from the currently logged-in user):
    # First make a .new object, set the extra field, then .save

    @post = Post.new( post_params )

    if params[:file].present?
      response = Cloudinary::Uploader.upload(params[:file])
      @post.image = response["public_id"]
    end
      # strong params
    @post.user = @current_user
# this could break

# this could break
    # could also write: post.user_id = @current_user.id
    @post.save
    # OR: @post = @current_user.mixtapes.create mixtape_params

    if @post.persisted?
      redirect_to posts_path # redirect to index
    else
      # @post did not get saved to the DB

      flash[:errors] = @post.errors.full_messages # an array of error strings we can print
      # redirect_to new_mixtape_path

      # Render a *different* action's template (new instead of create)
      # We do this so the form can be pre-populated with the values typed
      # in by the user when they submitted it the first time
      render :new
    end


  end

  def index
    @posts = Post.all
    @users = User.all
  end

  def show
    @post = Post.find params[:id]
    @users = User.all # key comes from /mixtapes/:id
  end

  def add_post
    @post = Post.find params[:id]

    unless @current_user.liked_posts.include? @post
      @current_user.liked_posts << @post
    end

    # raise "hell"
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find params[:id]  # key comes from /mixtapes/:id
  end

  def update
    @post = Post.find params[:id]  # key comes from /mixtapes/:id

    # Check that the owner of this post is STILL the logged-in user
    # (i.e. the ID in the edit form action was not tampered with)
    unless @post.user == @current_user
      redirect_to(posts_path) # this alone does not stop the action
      return  # stop the rest of the action from running! i.e. the update below
    end

    # check whether the update actually changed the DB or not
    # (.update returns true if it did change the DB, false if there was an error)
    if @post.update( post_params )
      # successfully updated the DB
      redirect_to post_path(@post) # redirect to show page
    else
      # error updating
      flash[:errors] = @post.errors.full_messages
      render :edit   # Render the edit template to show the form, even though this is the update action
    end

  end # update

  def destroy
    post = Post.find params[:id]  # key comes from /mixtapes/:id
    post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:name, :image, :heading, :content)
  end

end # class
