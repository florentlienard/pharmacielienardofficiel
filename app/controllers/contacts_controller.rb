class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  def show
    @contact = Contact.find(params[:id])
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts

  # def create
  #   @contact = contact.new(contact_params)
  #       respond_to do |format|
  #     if @contact.save
  #       # contactMailer.new_ordo(@contact).deliver_now
  #       format.html { redirect_to @contact, notice: 'contact was successfully created.' }
  #       format.json { render :show, status: :created, location: @contact }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @contact.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # contactMailer.new_ordo(@contact).deliver_now
      redirect_to root_path
    else
      render :new
    end
  end

    # def update
    #   @contact.update(contact_params)
    #   redirect_to contact_path(@contact)
    # end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :comment)
  end
end
