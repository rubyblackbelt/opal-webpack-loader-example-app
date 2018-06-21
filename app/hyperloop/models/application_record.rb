class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self
    alias _new_without_sti_type_cast new
  end
end
