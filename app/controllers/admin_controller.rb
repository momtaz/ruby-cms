class AdminController < ApplicationController
  def index
  	  @total_comments = comment.count
  end
end
