class Task < ApplicationRecord
  acts_as_paranoid

  before_create :generate_uuid
  before_save :set_completed_at

  validates :title, presence: true
  validates :description, length: { maximum: 500, message: "Não é permitido mais de 500 caracteres." }, allow_nil: true

  private

  def generate_uuid
    self.id = SecureRandom.uuid
  end

  def set_completed_at
    if status_changed?
      if status
        self.completed_at = Time.current
      else
        self.completed_at = nil
      end
    end
  end
end
