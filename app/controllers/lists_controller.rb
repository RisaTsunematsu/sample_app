class ListsController < ApplicationController
  def new    #投稿画面
    @list = List.new
  end
  
  def create  #データの保存
   list = List.new(list_params)
   list.save
   redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
