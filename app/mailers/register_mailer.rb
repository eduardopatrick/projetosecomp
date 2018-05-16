class RegisterMailer < ApplicationMailer
  default from: "secomp.petcomputacao@gmail.com"

  def send_email(contact)
    @contact = contact
    mail(to: 'secomp.petcomputacao@gmail.com', subject: "Cadastro - SECOMP")
  end

end
