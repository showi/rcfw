class MenusController < ApplicationController
  # GET /menus
  # GET /menus.xml
  def index
   #@menus = Menu.find(:all, :include => :dishes)
	@menus = Menu.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @menus }
    end
  end

  # GET /menus/1
  # GET /menus/1.xml
  def show
    @menu = Menu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @menu }
    end
  end

  # GET /menus/new
  # GET /menus/new.xml
  def new
    @menu = Menu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @menu }
    end
  end

  # GET /menus/1/edit
  def edit
    @menu = Menu.find(params[:id])
  end

  # POST /menus
  # POST /menus.xml
  def create
    @menu = Menu.new(params[:menu])

    respond_to do |format|
      if @menu.save
        flash[:notice] = 'Menu was successfully created.'
        format.html { redirect_to(@menu) }
        format.xml  { render :xml => @menu, :status => :created, :location => @menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /menus/1
  # PUT /menus/1.xml
  def update
    @menu = Menu.find(params[:id])

    respond_to do |format|
      if @menu.update_attributes(params[:menu])
        flash[:notice] = 'Menu was successfully updated.'
        format.html { redirect_to(@menu) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.xml
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
	 
    respond_to do |format|
      format.html { redirect_to(menus_url) }
      format.xml  { head :ok }
    end
  end

	def add_dish
		respond_to do |format|
			if (params[:dishes_menus][:menu_id] and params[:dishes_menus][:dish_id])
				menu = Menu.find(params[:dishes_menus][:menu_id])
				dish = Dish.find(params[:dishes_menus][:dish_id])
				dishesMenu = DishesMenu.new(
					:menu_id => params[:dishes_menus][:menu_id],
					:dish_id => params[:dishes_menus][:dish_id])
				dishesMenu.save!
				flash[:notice] = "Dish added"
			end	
			format.html { redirect_to :back }
		end
	end
	def del_dish
		respond_to do |format|
			if (params[:dishes_menus][:id])
				#dishesMenu = DishesMenu.find(:first, :conditions => {
				#	:id => params[:dishes_menus][:id]})
				DishesMenu.destroy(params[:dishes_menus][:id])
				flash[:notice] = "Dish deleted"
			end	
			format.html { redirect_to :back }
		end
	end
end
