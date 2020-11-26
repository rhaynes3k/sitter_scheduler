class SittersController < ApplicationController

  def index
    @sitter = Sitter.all
  end

  def new
    @sitter = Sitter.new
  end

  def create
    @sitter = Sitter.new(sit_params)
  end

private

  def sit_params
    params.require(:sitter).permit(:name, :age, :zip_code)
  end
end
