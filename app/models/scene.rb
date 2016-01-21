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


  private


end
