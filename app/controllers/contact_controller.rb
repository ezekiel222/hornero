class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
  redirect_to root_path, notice: 'Se envio el Mensaje correctamente'
    else
      flash.now[:error] = 'Algo anduvo mal, vuelva a intentarlo'
      render :new
    end
  end
end
