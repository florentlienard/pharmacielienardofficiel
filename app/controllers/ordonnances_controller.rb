class OrdonnancesController < ApplicationController
end

  def index
    @ordonnances = Ordonnance.all
  end

  # GET /ordonnances/1
  def show
    @ordonnance = Ordonnance.find(params[:id])
  end

  # GET /ordonnances/new
  def new
    @ordonnance = Ordonnance.new
  end

  # POST /ordonnances
  def create
    @ordonnance = Ordonnance.new(ordonnance_params)
    if @ordonnance.save
      # OrdonnanceMailer.welcome(@ordonnance).deliver_now
      redirect_to root_path
    else
      render :new
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def ordonnance_params
    params.require(:ordonnance).permit(:first_name, :last_name, :email, :social_number, :photo)
  end
