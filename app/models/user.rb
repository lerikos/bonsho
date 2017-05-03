class User < ActiveRecord::Base
#class User < ApplicationRecord
  after_initialize :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         enum role: [:user, :admin]
         has_many :alerts, :foreign_key => 'admin_id'
         
         def set_default_role
           self.role ||= :user
         end
end
