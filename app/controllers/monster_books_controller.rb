class MonsterBooksController < ApplicationController
  def index
    @monster_books = current_user.monster.monster_books
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

  def destroy

    @monster_book = MonsterBook.find(params[:id])

    @monster_book.destroy
    redirect_to monster_monster_books_path, status: :see_other
  end

  private

  def monster_book_params
    params.require(:monster_book).permit(:read_date, :reading_status, :notes)
  end
end
