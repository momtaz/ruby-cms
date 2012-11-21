class CommentsController < ApplicationController
  def index
    @comments = Comment.paginate :page=>params[:comment], :order=>'created_at desc',
:per_page => 5

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sites }
    end
  end
   
   def create
    @site = Site.find(params[:site_id])
    @comment = @site.comments.create(params[:comment])
    respond_to do |format|
    	    Notifier.comment_received(@comment).deliver
      format.html {redirect_to :back }
      format.js
    end
  end
  def destroy
    @site = Site.find(params[:site_id])
    @comment = @site.comments.find(params[:id])
    Notifier.comment_received(@comment).deliver
    @comment.destroy
    redirect_to site_path(@site)
  end
end
