class OrdonnancesController < ApplicationController

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

  # def create
  #   @ordonnance = Ordonnance.new(ordonnance_params)
  #       respond_to do |format|
  #     if @ordonnance.save
  #       # OrdonnanceMailer.new_ordo(@ordonnance).deliver_now
  #       format.html { redirect_to @ordonnance, notice: 'ordonnance was successfully created.' }
  #       format.json { render :show, status: :created, location: @ordonnance }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @ordonnance.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  def create
    @ordonnance = Ordonnance.new(ordonnance_params)
    if @ordonnance.save
      flash[:notice] = "Votre ordonnance a bien été envoyée !"
      # OrdonnanceMailer.new_ordo(@ordonnance).deliver_now
      redirect_to new_ordonnance_path
    else
      redirect_to new_ordonnance_path
      flash[:notice] = "Attention : l'envoi de votre ordonnance a échoué, pensez à bien remplir tous les champs :)"
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def ordonnance_params
    params.require(:ordonnance).permit(:first_name, :last_name, :email, :social_number, :photo)
  end
end
