class AuthorsController < ApplicationController
    
  def index
      authors = Author.All
      respond_to  do |format|
          format.xml {render xml:authors, status: 200}
          format.json {render json:authors, status: 200}
      render json: authors
  end
  
  def show
      author = Author.find(params[:id])
      render json: author, status:200
  end
  
  def create
      author = Author.create(params[:name], params[:age])
      if author.save
          render json: author, status:201
      else
          render json: author.errors, status: :unprocesable_entity
      end
  end
  
  def update
      
  end
  
  def destroy
      
  end
  
  def author_params
      params.require(:author).permit(:name, :age)
  end 
end
end
