class ModullsController < ApplicationController
  # GET /modulls
  # GET /modulls.json
  def index
    @modulls = Modull.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modulls }
    end
  end

  # GET /modulls/1
  # GET /modulls/1.json
  def show
    @modull = Modull.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modull }
    end
  end

  # GET /modulls/new
  # GET /modulls/new.json
  def new
    @modull = Modull.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modull }
    end
  end

  # GET /modulls/1/edit
  def edit
    @modull = Modull.find(params[:id])
  end

  # POST /modulls
  # POST /modulls.json
  def create
    @modull = Modull.new(params[:modull])

    respond_to do |format|
      if @modull.save
        format.html { redirect_to @modull, notice: 'Modull was successfully created.' }
        format.json { render json: @modull, status: :created, location: @modull }
      else
        format.html { render action: "new" }
        format.json { render json: @modull.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /modulls/1
  # PUT /modulls/1.json
  def update
    @modull = Modull.find(params[:id])

    respond_to do |format|
      if @modull.update_attributes(params[:modull])
        format.html { redirect_to @modull, notice: 'Modull was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @modull.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modulls/1
  # DELETE /modulls/1.json
  def destroy
    @modull = Modull.find(params[:id])
    @modull.destroy

    respond_to do |format|
      format.html { redirect_to modulls_url }
      format.json { head :no_content }
    end
  end
  
  def modules
    if params.has_key?(:key) and params[:key] == '094f5c766dcfa72ce09c3056c31a893f1ffc02d05268fc0c22e0fa9e88c303ac'
      if params.has_key?(:category)
        return render json: { link: 'http://localhost:3000/category.zip' }
      end
      if params.has_key?(:products)
        return render json: { link: 'http://localhost:3000/products.zip' }
      end
      if params.has_key?(:all_params)
        return render json: { module: 'magento', version: '1.2.9', count_sku: 23659 }
      elsif params.has_key?(:version)
        return render json: { version: '1.2.9' }
      elsif params.has_key?(:count_sku)
        return render json: { count_sku: 23659 }
      else
        return render json: { module: 'magento', ver: '1.2.9', count_sku: 23659, changes: true }
      end
    else
      return render json: { error: 'key does not fit' }
    end
  end  
end
