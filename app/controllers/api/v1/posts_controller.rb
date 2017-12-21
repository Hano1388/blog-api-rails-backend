module Api
  module V1
    class PostsController < ApplicationController
      before_action :set_post, only: [:show, :destroy]
      def index
        render json: Post.all
      end

      def create
      end
      
      def show
      end

      def destroy
      end

      private
      def set_post
        @post = Post.find(params[:id])
      end

      def post_params
        params.permit(:title, :body)
      end

    end
  end
end
