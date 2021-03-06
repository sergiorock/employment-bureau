class JobOffersController < ApplicationController
  before_action :set_company, only: [:edit, :update, :destroy, :create, :new]
  before_action :set_job_offer, only: %i[ show edit update destroy ]

  # GET /job_offers or /job_offers.json
  def index
    @job_offers = JobOffer.all
    @job_offers = @job_offers.paginate(page: params[:page]).order(created_at: :desc)
  end

  # GET /job_offers/1 or /job_offers/1.json
  def show
    @company = @job_offer.company_id
  end

  # GET /job_offers/new
  def new
    @job_offer = JobOffer.new
  end

  # GET /job_offers/1/edit
  def edit
  end

  # POST /job_offers or /job_offers.json
  def create
    @job_offer = JobOffer.new(job_offer_params)

    respond_to do |format|
      if @job_offer.save
        format.html { redirect_to company_job_offers_url, notice: "Job offer was successfully created." }
        format.json { render :show, status: :created, location: @job_offer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_offers/1 or /job_offers/1.json
  def update
    respond_to do |format|
      if @job_offer.update(job_offer_params)
        format.html { redirect_to company_job_offers_url, notice: "Job offer was successfully updated." }
        format.json { render :show, status: :ok, location: @job_offer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_offers/1 or /job_offers/1.json
  def destroy
    @job_offer.destroy
    respond_to do |format|
      format.html { redirect_to company_job_offers_url, notice: "Job offer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:company_id])
    end

    def set_job_offer
      @job_offer = JobOffer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_offer_params
      params.require(:job_offer).permit(:description, :start_date, :end_date, :is_active).tap do |company|
        company[:company_id] = @company.id
    end
  end
end
