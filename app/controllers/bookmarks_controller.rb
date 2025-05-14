class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    category_id = params[:category_id]
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category_id = category_id
    if @bookmark.save
      redirect_to category_path(category_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category)
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id)
  end

end
