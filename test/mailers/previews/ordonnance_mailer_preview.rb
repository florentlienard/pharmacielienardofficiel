class OrdonnanceMailerPreview < ActionMailer::Preview
  def new_ordo
    ordonnance = Ordonnance.first
    OrdonnanceMailer.new_ordo(ordonnance)
  end
end
