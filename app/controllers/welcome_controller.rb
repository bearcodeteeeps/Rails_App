class WelcomeController < ApplicationController
  def index
  	redirect_to posts_path(abc: 'asdfas')
  end
end
