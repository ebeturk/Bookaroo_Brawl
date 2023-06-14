class MonstersController < ApplicationController
  before_action :set_monster, only: %i[show edit update destroy]
  def index
    @monsters = Monster.all
  end

  def show
  end


  def new
     # check if the user already has a monster
    if current_user.monster.present?
      redirect_to monster_path(current_user.monster), alert: "Your amazing monster is here!"
    else
    @monster = Monster.new
    end
  end

  def create
    @monster = Monster.new(monster_params)
    @monster.user = current_user
    # calculate age
    age = Date.today.year - current_user.date_of_birth.year
    # assign category
    @monster.category =
      case age
      when age < 5 then 'toddler'
      when age < 12 then 'pre_school'
      when age < 16 then 'school_age'
      else
        'pre_teen'
      end
    if @monster.save
      redirect_to @monster, notice: 'Monster was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @monster.update(monster_params)
      redirect_to monster_path(@monster)
    else
      render :edit
    end
  end

  def destroy
    @monster.destroy
    redirect_to monsters_path, status: :see_other
  end

  def den
    @monster = current_user.monster
    @monster_books = current_user.monster.books
  end

  private

  def set_monster
    @monster = Monster.find(params[:id])
  end

  def monster_params
    params.require(:monster).permit(:name, :description, :category, images: [])
  end
end
