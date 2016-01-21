class User < ActiveRecord::Base
  has_many :scenes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_attached_file :avatar, styles: {
    pinkie: '50x50',
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x400>',
    poster: '450X600>'
  }, default_url: ":style/sg-dead.jpg"

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
