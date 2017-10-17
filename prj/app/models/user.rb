class User < ApplicationRecord
  # enum usertype: [:teen, :client, :cust_srv, :admin, :null]
  # after_initialize :set_default_role, :if => :new_record?

  # def set_default_role
  #   self.usertype ||= :null
  # end

  has_one :teenager
  has_one :client
  has_many :payment
  has_many :address
  has_many :r_endorsement, :class_name => 'Endorsement', :foreign_key => 'ref_user_id'
  has_many :g_endorsement, :class_name => 'Endorsement', :foreign_key => 'end_user_id'	
  validates :username, presence: true,
                    length: { minimum: 6 }
  validates :password, presence: true,
                    length: { minimum: 6 }
end