class MessagesController < ApplicationController
  def not_yet_user
    render 'not_yet_user'
  end

  def index
    @user = User.all
  end

  def new
  end

  def create
  end
end
