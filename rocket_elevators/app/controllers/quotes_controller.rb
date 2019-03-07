class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes
  # POST /quotes.json
  def create

    @quote = Quote.new(quote_params)

    puts "======================================="
    puts params[:quote][:department]
    puts @quote.inspect
    puts "===================================="
    if params[:quote][:department] == 'Residential'
      @quote.number_of_apartments = params[:resi_number_of_apartments]
      @quote.number_of_floors = params[:resi_number_of_floors]
      @quote.number_of_basements = params[:resi_number_of_basements]
    
    elsif params[:quote][:department] == 'Commercial' 
      @quote.number_of_apartments = params[:comm_number_of_apartments]
      @quote.number_of_parking = params[:comm_number_of_parking]
      @quote.number_of_basements = params[:comm_number_of_basements]
      @quote.number_of_stores = params[:comm_number_of_stores]

    elsif params[:quote][:department] == 'Corporate' 
      @quote.number_of_floors = params[:corp_number_of_floors]
      @quote.number_of_basements = params[:corp_number_of_basements]
      @quote.max_occupancy_per_floor = params[:corp_max_occupancy_per_floor]
      @quote.number_of_stores = params[:corp_number_of_stores]
      @quote.number_of_parking = params[:corp_number_of_parking]

    elsif params[:quote][:department] == 'Hybrid' 
      @quote.number_of_floors = params[:hyb_number_of_floors]
      @quote.number_of_basements = params[:hyb_number_of_basements]
      @quote.max_occupancy_per_floor = params[:hyb_max_occupancy_per_floor]
      @quote.number_of_stores = params[:hyb_number_of_stores]
      @quote.number_of_parking = params[:hyb_number_of_parking]
    end

    respond_to do |format|
      if @quote.save
        format.html { redirect_to "http://localhost:3000/gform.html", notice: 'Quote was successfully created.' }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:department, :full_name, :company_name, :email, :phone_number, :number_of_floors, :number_of_basements, :number_of_parking, :number_of_stores, :max_occupancy_per_floor, :hours_of_activity, :service_level, :number_of_elevators, :installation_cost, :total_cost)
    end
end
