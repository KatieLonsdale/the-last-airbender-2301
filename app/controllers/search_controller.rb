class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.new.characters_by_nation(params[:nation])
  end
end