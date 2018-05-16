class SubscriptionMailer < ApplicationMailer
  default from: "secomp.petcomputacao@gmail.com"

  def send_email(inscricao)
    @inscricao = inscricao
    mail(to: 'secomp.petcomputacao@gmail.com', subject: "Pré-inscrição - #{@inscricao.choice}")
  end

end
