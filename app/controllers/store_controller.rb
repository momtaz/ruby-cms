class StoreController < ApplicationController
  def index
    @sites = Site.all
   # @comment = current_comment
  end
end
