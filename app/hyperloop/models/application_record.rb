class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def loading?
    attributes.any? { |key, _| self[key].loading? }
  end

  def loaded?
    !loading?
  end

  class << self
    alias _new_without_sti_type_cast new
	end
end
