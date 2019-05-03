class ApplicationController < ActionController::API
    def index 
        render json: Author.all
    end
    def create 
        author = Author.new(params_author)
        author.save
        if author.save
            render json: author, status: 
        end
    end
    def params_author
        params.require(:author).permit(:name)
    end
end
