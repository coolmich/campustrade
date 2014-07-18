class BooksController < ApplicationController
  before_filter :check_user, :only=>[:index, :update]
  def index
    @books = Book.where(params[:bookSearchType].to_sym => params[:search])
    if @books.empty?
      flash[:alert] = 'No books found'
      redirect_to root_path
    end
  end

  def show
    @book ||= Book.find(params[:id])
  end

  def new
    @book = Book.new 
  end

  def create
    @book = processISBN
    if @book.nil?
      flash[:alert] = "Invalid ISBN!"
      redirect_to new_book_path
    else
      redirect_to new_bookprice_path
    end
  end

  private
    def processISBN
      book = Book.find_by(:isbn => params[:book][:isbn]) || fetch_book(params[:book][:isbn])
    end

    def fetch_book(isbn)
      url = "https://www.googleapis.com/books/v1/volumes?q=isbn:#{isbn}"
      result = JSON.load(open(url).read)
      if result["totalItems"] == 0
        nil
      else
        book = Book.create(
          :title => result["items"][0]["volumeInfo"]["title"],
          :isbn => isbn,
          :author => result["items"][0]["volumeInfo"]["authors"][0] || " ",
          :pic_url => result["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
        )
      end
    end

end
