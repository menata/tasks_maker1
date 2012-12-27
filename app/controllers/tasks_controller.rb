class TasksController < ApplicationController

  before_filter :find_task, only: [:show, :edit, :update, :destroy, :complete]

  def index
    @tasks = Task.all 
  end
  
  def new
    @task = Task.new
  end  
  
  def edit     
  end
  
  def update
   @task.update_attributes(params[:task])   
   if @task.save
       redirect_to "/pitems/"+params[:pitem_id]+"/tasks/"+@task.id.to_s     
   else
       render "/pitems/"+params[:pitem_id]+"/tasks/"+@task.id.to_s+"/edit" 
   end
  end
 

  def destroy
    @task.destroy
    redirect_to action: "index"
  end
  
  def show
      if @task
        render "tasks/show/"  
      else
       render text: "Page not found", status: 404
   end
  end

  def create 
    @task = Task.new(params[:task]) 
    @task.pitem_id = params[:pitem_id]  
    if @task.save     
         redirect_to "/pitems/"+params[:pitem_id]+"/tasks/"+@task.id.to_s
    else  
       render "new"    
    end
  end

  private

    def find_task
       @task = Task.find(params[:id])
    end

end
