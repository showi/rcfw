class DishesController < ApplicationController
   before_filter :require_admin_user, :only => [:new, :create, :edit, :update, :add_dish, :del_dish, :destroy]
    #before_filter :require_no_user, :only => [:index, :show]

  # GET /dishes
  # GET /dishes.xml
  def index
   @cattype = Cattype.find(:first, :conditions => { :name => "dish" }) 
	#@categories = find_top_category_by_type("dish")
	#@dishes = Dish.find(:all, :order => :category_id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dishes }
    end
  end

  # GET /dishes/1
  # GET /dishes/1.xml
  def show
    @dish = Dish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dish }
    end
  end

  # GET /dishes/new
  # GET /dishes/new.xml
  def new
    @dish = Dish.new
	@categories = Category.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dish }
    end
  end

  # GET /dishes/1/edit
  def edit
    @dish = Dish.find(params[:id])
	@categories = Category.all
  end

  # POST /dishes
  # POST /dishes.xml
  def create
    @dish = Dish.new(params[:dish])

    respond_to do |format|
      if @dish.save
        flash[:notice] = 'Dish was successfully created.'
        format.html { redirect_to(@dish) }
        format.xml  { render :xml => @dish, :status => :created, :location => @dish }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dishes/1
  # PUT /dishes/1.xml
  def update
    @dish = Dish.find(params[:id])

    respond_to do |format|
      if @dish.update_attributes(params[:dish])
        flash[:notice] = 'Dish was successfully updated.'
        format.html { redirect_to(@dish) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.xml
  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy

    respond_to do |format|
      format.html { redirect_to(dishes_url) }
      format.xml  { head :ok }
    end
  end

	def add_tag
      respond_to do |format|
         if (params[:tag][:dish_id] and params[:tag][:name])
            dish = Dish.find(params[:tag][:dish_id])
				dish.tag_list.add(params[:tag][:name])
				dish.save
				flash[:notice] = "tag added"
         end    
         format.html { redirect_to :back }
      end    

	end

end
