class NonprofitsController < ApplicationController

  def index
    @nonprofits = Nonprofit.all
    @nonprofit = Nonprofit.new
  end

  def new
    @nonprofit = Nonprofit.new
  end

  def create
    @nonprofit = Nonprofit.new(nonprofit_params)
    if @nonprofit.save
      flash[:notice] = "nonprofit created."
      redirect_to nonprofits_path
    else
      render 'new'
    end
  end

  def show
    @nonprofit = Nonprofit.find(params[:id])
  end

  def edit
    @nonprofit = Nonprofit.find(params[:id])
  end

  def update
    @nonprofit = Nonprofit.find(params[:id])
    if @nonprofit.update(nonprofit_params)
      flash[:notice] = "nonprofit updated."
      redirect_to nonprofit_path(@nonprofit)
    else
      render 'edit'
    end
  end

  def destroy
    @nonprofit = Nonprofit.find(params[:id])
    @Nonprofit.destroy
    flash[:notice] = "nonprofit deleted."
    redirect_to nonprofits_path
  end

private
  def nonprofit_params
    params.require(:nonprofit).permit(:name)
  end


end
