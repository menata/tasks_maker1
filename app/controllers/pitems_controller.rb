class PitemsController < ApplicationController

before_filter :find_pitem, only: [:show, :edit, :update, :destroy, :complete]


  def index
    @pitems = current_user.pitems   
  end
  
  def new
    @pitem = current_user.pitems.build 
  end  
  
  def edit
  end
  
  def update
   @pitem.update_attributes(params[:pitem])
   if @pitem.errors.empty?
      redirect_to pitem_path(@pitem)
   else
      render "edit"
   end
  end

  def destroy
    @pitem.destroy
    redirect_to action: "index"
  end
  
  def show
     if @pitem
        render "show"  
      else
       render text: "Page not found", status: 404
   end
  end

  def create
    @pitem = current_user.pitems.create(params[:pitem])
    if @pitem.errors.empty?
       redirect_to pitem_path(@pitem)
    else
       render "new"    
    end
   end

 private

    def find_pitem
       @pitem = current_user.pitems.find(params[:id])
    end

end
