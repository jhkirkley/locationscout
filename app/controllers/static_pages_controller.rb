class StaticPagesController < ApplicationController
  def home
  end

  def around
    @coords_array = Scene.get_scene_coords
  end

  def about
  end

  def help
  end

  def contact
  end
end
