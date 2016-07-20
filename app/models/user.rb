class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :send_messages, class_name: 'Message', foreign_key: :from
  has_many :received_messages, class_name: 'Message', foreign_key: :to

  validates :username, presence: true

  def messages
    Message.where('"from" = ? OR "to" = ?', id, id)
  end

  def friend_with?(user)
    friendship_with(user).any?
  end

  def friendship_with(user)
    Friendship.where("(creator_id = ? AND friend_id = ?) OR (creator_id = ? AND friend_id = ?)", id, user.id, user.id, id)
  end
end
