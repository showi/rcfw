class ScmsController < ApplicationController
  # GET /scms
  # GET /scms.xml
  def index
    @scms = Scm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scms }
    end
  end

  # GET /scms/1
  # GET /scms/1.xml
  def show
    @scm = Scm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scm }
    end
  end

  # GET /scms/new
  # GET /scms/new.xml
  def new
    @scm = Scm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scm }
    end
  end

  # GET /scms/1/edit
  def edit
    @scm = Scm.find(params[:id])
  end

  # POST /scms
  # POST /scms.xml
  def create
    @scm = Scm.new(params[:scm])

    respond_to do |format|
      if @scm.save
        flash[:notice] = 'Scm was successfully created.'
        format.html { redirect_to(@scm) }
        format.xml  { render :xml => @scm, :status => :created, :location => @scm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scms/1
  # PUT /scms/1.xml
  def update
    @scm = Scm.find(params[:id])

    respond_to do |format|
      if @scm.update_attributes(params[:scm])
        flash[:notice] = 'Scm was successfully updated.'
        format.html { redirect_to(@scm) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scms/1
  # DELETE /scms/1.xml
  def destroy
    @scm = Scm.find(params[:id])
    @scm.destroy

    respond_to do |format|
      format.html { redirect_to(scms_url) }
      format.xml  { head :ok }
    end
  end
end
