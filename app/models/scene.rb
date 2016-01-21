class Scene < ActiveRecord::Base
   belongs_to :user
   belongs_to :movie

   default_scope -> { order(created_at: :desc) }

   validates :user_id, presence: true
   validates :name, presence: true


  private


end
