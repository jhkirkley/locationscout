class Scene < ActiveRecord::Base
   belongs_to :user
   belongs_to :movie
   validates :user_id, presence: true
   validates :name, presence: true

  before_save :default_values

  private

  def default_values
    self.completed ||= false
    nil                           # required so that TX will not rollback!!!
  end
end
