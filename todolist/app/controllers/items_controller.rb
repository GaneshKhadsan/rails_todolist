class ItemsController < ApplicationController

    def index
        @items = Item.all.order("created_at DESC")
    end    

    def new
        @item = Item.new
    end
    
    def create
        @item = Item.new(item_params)
        if @item.save
          flash[:success] = "Task successfully created"
          redirect_to root_path
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    
private
def item_params 
    params.require(:item).permit(:title , :description)
end

end
