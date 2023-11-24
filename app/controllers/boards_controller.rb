class BoardsController < ApplicationController
    def index
    end

    def new
        @boards = Board.new
    end

    def create
        Board.create(board_params)
    end

    private
    def board_params
        params.require(:boards).permit(:author_name, :title, :body)
    end
end
