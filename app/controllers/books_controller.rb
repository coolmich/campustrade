require 'open-uri'
class BooksController < ApplicationController

  def index
    params[:search] = Book.convertISBN(params[:search])
    Datum.processWord(params[:search])
    @books = Book.similar_search(params[:search])
    if @books.empty?
      flash[:alert] = 'No books found'
      redirect_to @school
    end
    if @books.count == 1
      redirect_to school_book_path(@school.name, @books.first)
    end
    get_bookprices @books
  end

  def show
    @book ||= Book.where(:id=>params[:id])
    get_bookprices @book
  end

  def new
    @book = Book.new
  end

  def update
    book = Book.find(params[:b][:id])
    rents = Rentrecord.where(:user_id=>current_user.id, :book_id=>book.id)
    if rents.empty?
      Rentrecord.create(:user_id=>current_user.id, :book_id=>book.id)
      book.update_attribute(:rent, book.rent - 1)
      redirect_to rent_path
    else
      flash[:alert] = "You have rented this book"
      redirect_to :back
    end
  end

  def create
    params[:book][:isbn] = Book.convertISBN(params[:book][:isbn])

    if auto_mode?
      @book = Book.processISBN(params[:book][:isbn], @school.id)
      if @book.nil?
        flash[:alert] = "Sorry, this ISBN is unrecognized. Please enter book info manually."
        redirect_to new_school_book_path
      else
        @book.update_attribute(:course, params[:book][:course].delete(' ').downcase)
        redirect_to new_school_bookprice_path(:book_id => @book.id)
      end
    else
      @book = Book.create(book_params)
      redirect_to new_school_bookprice_path(:book_id => @book.id)
    end
  end

  private
    def auto_mode?
      params[:save_mode] == "auto"
    end

    def book_params
      params.require(:book).permit(:author, :course, :title, :isbn)
    end

    def get_bookprices(book_arr)
      @prices = {}
      book_arr.each do |b|
        @prices[b.id] = b.bookprices.valid
      end
    end

end