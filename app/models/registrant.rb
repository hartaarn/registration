class Registrant < ActiveRecord::Base
  default_scope :order => 'firstname'

  include ActiveModel::Validations
  #attr_accessor :email

  validates :firstname, :lastname, :gender, :age, :phone_number, :presence => true
  validates :age, :numericality => {:greater_than_or_equal_to => 1, :less_than_or_equal_to => 100}
  validates :email, :presence => true, :email => true, :uniqueness => true
end
