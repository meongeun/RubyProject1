class PostController < ApplicationController
  before_action :authenticate_user!, except: [:list]

  def create
    _title = params[:title]
    _contents= params[:contents] #input box에 입력한 이름으로 꺼내옴
                                 #record/ row
    _lat = params[:lat]
    _lng = params[:lng]
    _address = params[:address]

    
    post = Post.new(title:_title, contents: _contents)
    post.user = current_user
    post.lat = _lat
    post.lng = _lng
    post.address = _address
    post.save

    redirect_to controller:'post', action: 'list'

  end

  def new
   # require_login  
  end
  def list
    @posts = Post.all.paginate(page: params[:page], per_page: 5)
  end
  def modify
    
    _id = params[:id]
    @post = Post.find(_id)
    authorize_action_for @post
  end
  def update
    _id = params[:id]
    _title =params[:title]
    _contents= params[:contents]
    _lat = params[:lat]
    _lng = params[:lng]
    _address = params[:address]


    post=Post.find(_id)
    authorize_action_for post


    post.title= _title
    post.contents= _contents
    post.lat = _lat
    post.lng = _lng
    post.address = _address
 
    post.save

    redirect_to controller: 'post', action: 'list'
    
  end
  def delete
    _id=params[:id]

    post=Post.find(_id)
    authorize_action_for post

    post.destroy

    redirect_to controller: 'post', action: 'list'


  end

end
