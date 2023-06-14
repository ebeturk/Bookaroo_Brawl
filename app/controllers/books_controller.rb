class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    if params[:monster_id].present?
      @monster = Monster.find(params[:monster_id])
      @books = @monster.books
    else
      @books = Book.all
    end
  end

  def show
    @monster_book = MonsterBook.find_by(monster_id: current_user.monster.id, book_id: params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Book was successfully added.'
      @monster_book = MonsterBook.create(book: @book, monster: current_user.monster)
    else
      render :new
    end
  end

  def edit
    @monster = current_user.monster
    @monster_book = MonsterBook.find_by(book_id: params[:id], monster_id: @monster.id)
    @book = @monster_book.book
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, status: :see_other
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :description, :genre, :rating, :suitable_for, :image)
  end

  def monster_book_params
    params.require(:monster_book).permit(:reading_status, :notes)
  end
end
