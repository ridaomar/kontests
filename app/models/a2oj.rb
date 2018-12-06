class A2oj < ApplicationRecord
  self.pluralize_table_names = false
  self.primary_key = :code

  def to_param
    code.parametarize
  end
end
