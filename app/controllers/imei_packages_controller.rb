class ImeiPackagesController < ApplicationController
  # GET /imei_packages
  # GET /imei_packages.json
  def index
    @imei_packages = ImeiPackage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imei_packages }
    end
  end

  # GET /imei_packages/1
  # GET /imei_packages/1.json
  
  def show
    @imei_package = ImeiPackage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imei_package }
    end
  end

  # GET /imei_packages/new
  # GET /imei_packages/new.json
  def new
    @imei_package = ImeiPackage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imei_package }
    end
  end

  # GET /imei_packages/1/edit
  def edit
    @imei_package = ImeiPackage.find(params[:id])
  end

  # POST /imei_packages
  # POST /imei_packages.json
  def create
    @imei_package = ImeiPackage.new(params[:imei_package])
    
    if params[:imei_list]!=""
      params[:imei_list].each_line do |line|
        @imei_package_l = ImeiPackage.new(params[:imei_package])
        @imei_package_l.imei=line
        @imei_package_l.save!
      end
    end

    respond_to do |format|
      if params[:imei_list]==""
        format.html { redirect_to @imei_package, notice: 'Imei package was successfully created.' }
        format.json { render json: @imei_package, status: :created, location: @imei_package }
      elsif params[:imei_list]!=""
        format.html { redirect_to imei_packages_path, notice: 'Imei packages were successfully created.' }
        format.json { render json: imei_packages_path, status: :created, location: @imei_package }
      else
        format.html { render action: "new" }
        format.json { render json: @imei_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imei_packages/1
  # PUT /imei_packages/1.json
  def update
    @imei_package = ImeiPackage.find(params[:id])

    respond_to do |format|
      if @imei_package.update_attributes(params[:imei_package])
        format.html { redirect_to @imei_package, notice: 'Imei package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imei_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imei_packages/1
  # DELETE /imei_packages/1.json
  def destroy
    @imei_package = ImeiPackage.find(params[:id])
    @imei_package.destroy

    respond_to do |format|
      format.html { redirect_to imei_packages_url }
      format.json { head :no_content }
    end
  end
end
