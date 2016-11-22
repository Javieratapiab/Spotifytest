class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :songs, dependent: :destroy
  has_many :user_songs
  has_many :songs, through: :user_songs
  enum role: [:owner, :admin]
  before_create :default_role


  private
  def default_role
  	self.role = 'owner' if self.role.nil?
  end
end
