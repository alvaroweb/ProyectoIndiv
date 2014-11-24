class Padre < ActiveRecord::Base

	validates :name, presence: true
	validates :surname, presence: true
	validates :phone, length:{maximum: 9}, presence: true

  def full_name
  	"#{name} #{surname}"
  end

  def name
  	attributes['name'].capitalize
  end
  
end


