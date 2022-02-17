class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def my_friends
    @friends = current_user.friends
  end

  def search
    if params[:friend].present?
      @friends_search = User.search(params[:friend])
      @friends_search = current_user.except_current_user(@friends_search)
      if @friends_search
        render 'users/my_friends'
      else
        flash[:alert] = "Please enter a valid symbol to search"
        redirect_to my_friends_path
      end
    else
      flash[:alert] = "Please enter a symbol to search"
      redirect_to my_friends_path
    end
  end
end
