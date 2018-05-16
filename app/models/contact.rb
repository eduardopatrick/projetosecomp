class Contact < ApplicationRecord
    validates_presence_of :nome,:idade,:instituicao,:email,:celular,:confirm 
  # attribute :nome,      :validate => true
  # attribute :idade,  :validate => true
  # attribute :instituicao, :validate => true
  # attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  # attribute :number, :validate => true
  # # Declare the e-mail headers. It accepts anything the mail method
  # # in ActionMailer accepts.
  # def headers
  #   {
  #     :subject => "Inscrição Secomp - #{nome}.",
  #     :to => "secomp.petcomputacao@gmail.com",
  #     :from => email #{}%("#{name}"<#{email}> "#{matricula}" "#{message}" )
  #   }
  # end
end
