class Preinscricoe < ApplicationRecord
  validates_presence_of :choice, :nome, :idade, :instituicao, :email, :confirm
  # attribute :nome,      :validate => true
  # attribute :idade,     :validate => true
  # attribute :instituicao, :validate => true
  # attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  # attribute :telefone,  :validate => true
  # attribute :choice,  :validate => true
  #
  # # Declare the e-mail headers. It accepts anything the mail method
  # # in ActionMailer accepts.
  # def headers
  #   {
  #     :subject => "Pré-inscrição - #{choice}",
  #     :to => "secomp.petcomputacao@gmail.com",
  #     :from => %("#{nome}" <#{email}>)
  #   }
  # end
end
