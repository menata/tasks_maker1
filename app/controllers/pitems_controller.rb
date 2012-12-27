class PitemsController < ApplicationController

  def index
    @pitems = Pitem.all   
  end
  
  def new
    @pitem = Pitem.new
  end  
  
  def edit
   @pitem = Pitem.find(params[:id])
  end
  
  def update
   @pitem = Pitem.find(params[:id])
   @pitem.update_attributes(params[:pitem])
   if @pitem.errors.empty?
      redirect_to pitem_path(@pitem)
   else
      render "edit"
   end
  end

  def destroy
    @pitem = Pitem.find(params[:id])
    @pitem.destroy
    redirect_to action: "index"
  end
  
  def show
   unless @pitem = Pitem.find(params[:id])
     render text: "Page not found", status: 404
   end
  end

  def create
    @pitem = Pitem.create(params[:pitem])
    if @pitem.errors.empty?
       redirect_to pitem_path(@pitem)
    else
       render "new"    
    end
  end

end
