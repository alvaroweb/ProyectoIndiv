class Subject < ActiveRecord::Base
  belongs_to :teacher
  LEVELS = ['ESO-1', 'ESO-2', 'ESO-3', 'ESO-4']
  validate :level, inclusion: { in: LEVELS}
end
