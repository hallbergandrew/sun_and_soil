class EmailsController < ApplicationController

  def index
    @emails = Email.all
    @email = Email.new

  end

  def new
    @email = Email.new

  end

  def create
    @email = Email.new(email_params)
    if @email.save
      flash[:notice] = "Thank you for adding your email!"
      redirect_to emails_path
    else
      render 'new'
    end
  end

  private

  def email_params
    params.require(:email).permit(:email)
  end


end
