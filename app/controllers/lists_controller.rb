class ListsController < ApplicationController

  # GET "lists"
  def index
    @lists = List.all

  end

  # GET list/id
  def show
    @list = List.find(params[:id])
  end

  #GET lists/new
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new #show them the create list view
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to list_path(@list)
  end

  private
  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
