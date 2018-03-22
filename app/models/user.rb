# It looks like the schema that you designed with categories and sub-tasks
# Isn't really used: it's best to either finish it, or remove the extra models,
# controllers.

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks
  has_many :projects
  has_many :categories
end
