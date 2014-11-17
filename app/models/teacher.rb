class Teacher < ActiveRecord::Base

  def full_name
  	"#{name} #{surname}"
  end

  def name
  	attributes['name'].capitalize
  end
end
