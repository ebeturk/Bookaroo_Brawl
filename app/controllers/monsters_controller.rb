class MonstersController < ApplicationController
  before_action :set_monster, only: %i[show edit update]
  def index
    @monsters = Monster.all
  end

  def show
  end


  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_params)
    @monster.user = current_user

    # calculate age
    age = Date.today.year - current_user.date_of_birth.year
    # assign category
    @monster.category = if age < 5
      'toddler'
    elsif age < 12
      'pre_school'
    elsif age < 16
      'school_age'
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
      raise
      render :edit
    end
  end

  private

  def set_monster
    @monster = Monster.find(params[:id])
  end

  def monster_params
    params.require(:monster).permit(:name, :description, :category)
  end
end
