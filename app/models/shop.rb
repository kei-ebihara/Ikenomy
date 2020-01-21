class Shop < ApplicationRecord
  belongs_to :junre
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  has_one_attached :image
  attribute :new_image

  validates :name, presence: true, length: { maximum: 50 }
  validates :adress, presence: true, length: { maximum: 100 }
  validates :opentime, length: { maximum: 50 }
  validates :closetime, length: { maximum: 50 }
  validates :regularholiday, length: { maximum: 50 }
  validates :hp, length: { maximum: 1000 }
  validates :description, presence: true, length: { maximum: 1000 }

  scope :find_newest_shops, -> (p) { page(p).per(4).order(publish_date: :desc) }

  before_save do
    self.image = new_image if new_image
  end
end