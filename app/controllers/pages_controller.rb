class PagesController < ApplicationController
  def home
    @categories = Equipment.pluck(:sport).uniq!
  end
end
