class MonsterBooksController < ApplicationController
  def index
    @monster_books = current_user.monster.books
  end

  def new
    @monster_book = MonsterBook.new
  end

  def create
    @monster_book = MonsterBook.new
    @monster_book.book = Book.find(params[:book_id])
    @monster_book.monster = current_user.monster
    if @monster_book.save
      redirect_to @monster_book.book, notice: 'Book snack time! Your monster found a new book to munch.'
    else
      redirect_to @monster_book.book, alert: 'This book is already in your monster\'s library.'
    end
  end

  private

  def monster_book_params
    params.require(:monster_book).permit(:read_date, :reading_status, :notes)
  end
end
