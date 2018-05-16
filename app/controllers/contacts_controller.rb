class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    # @contact.request = request
    if @contact.save
      RegisterMailer.send_email(@contact).deliver_later(wait: 1.second)
      redirect_to root_url, notice: 'Cadastro Realizado com Sucesso!'
    else
      render :new, alert: 'Não foi possível efetuar o cadastro, por favor tente novamente.'
     end
  end

  private
    def contact_params
      params.require(:contact).permit(:nome, :idade, :email, :instituicao, :celular,:confirm)
    end
end
