class Movie < ActiveRecord::Base
   has_many :scenes

   # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :poster, styles: {

    thumb: '75x100>',
    square: '200x200#',
    medium: '300x400>',
    poster: '450X600>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :poster, :content_type => /\Aimage\/.*\Z/

  before_save :default_values
  private

  def default_values
    self.completed ||= false
    nil                           # required so that TX will not rollback!!!
  end
end
