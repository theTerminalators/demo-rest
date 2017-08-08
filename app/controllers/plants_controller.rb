class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def create
    plant = Plant.new(
      name: params[:input_name],
      age: params[:input_age],
      color: params[:input_color],
      height: params[:input_height]
    )
    plant.save
    render 'create.html.erb'
  end

  def edit
    @plant = Plant.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    plant1 = Plant.find_by(id: params[:id])
    plant1.update(
      name: params[:edit_name],
      age: params[:edit_age],
      color: params[:edit_color],
      height: params[:edit_height]
    )
    render 'update.html.erb'
  end

  def destroy
    @plant = Plant.find_by(id: params[:id])
    @plant.destroy
    render 'destroy.html.erb'
  end
end
