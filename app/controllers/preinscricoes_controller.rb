class PreinscricoesController < ApplicationController

 def new
   @preinscricoe = Preinscricoe.new
 end

 def create
   @preinscricoe = Preinscricoe.new pesinscricao_params
   # @preinscricoe.request = request
   if @preinscricoe.save
      SubscriptionMailer.send_email(@preinscricoe).deliver_later(wait: 1.second)
      redirect_to root_url, notice: 'Obrigado, Em breve entraremos em contato!'
   else
     render :new, alert: 'Não foi possível enviar a mensagem, tente novamente!'

   end
 end

 private
  def pesinscricao_params
    params.require(:preinscricoe).permit(:nome, :idade, :instituicao, :email, :telefone, :choice,:confirm)
  end
end
