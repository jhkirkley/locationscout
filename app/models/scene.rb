class Scene < ActiveRecord::Base
   belongs_to :user
   belongs_to :movie

   default_scope -> { order(created_at: :desc) }

   validates :user_id, presence: true
   validates :name, presence: true

     # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :scene_shot, styles: {

    thumb: '75x100>',
    square: '200x200#',
    medium: '300x400>',
    poster: '450X600>'
  }

    # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :location_shot, styles: {

    thumb: '75x100>',
    square: '200x200#',
    medium: '300x400>',
    poster: '450X600>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :scene_shot, :content_type => /\Aimage\/.*\Z/

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :location_shot, :content_type => /\Aimage\/.*\Z/
  #before_save :default_values
  #geocoder
  geocoded_by :fulladdress
  after_validation :geocode, :if => lambda{ |obj| obj.address_changed? && obj.city_changed? && obj.zip_changed?}

  def self.get_scene_coords
    scenes = Scene.all

    scene_coords_array = []

    scenes.each do |scene|
      scene_coords_array << {"lat" => scene.latitude, "lng" => scene.longitude, "name" => scene.name, "what" => scene.what}
    end

      scene_coords_array

    end

    def fulladdress
        [city, zip, address].compact.join(', ')
    end

  private
  #def default_values
  #  self.completed ||= false
  # nil                           # required so that TX will not rollback!!!
  #end

end
