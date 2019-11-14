class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id]) 
        else
             @current_user = nil
        end 
    end
end 
    def create
        @article =Article.new(article_params)
        @article.user = current_user
        
        if @article.save
            redirect_to @article
        else
            render 'new'
        end 
    end