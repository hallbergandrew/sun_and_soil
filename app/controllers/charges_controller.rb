class ChargesController < ApplicationController
  def index
    @charge = Charge.new
  end

end
