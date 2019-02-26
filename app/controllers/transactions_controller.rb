class TransactionsController < ApplicationController
  before_action :authenticate_user!
  def new
    gon.client_token = generate_client_token
  end

  def create
    @result = Braintree::Transaction.sale(
              amount: current_user.favorites.sum(:price),
              payment_method_nonce: nonce_from_the_client)
    if @result.success?
      redirect_to root_url, notice: "Congraulations! Your transaction has been successfully!"

    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end

  private

  def generate_client_token
    Braintree::ClientToken.generate
  end
end
