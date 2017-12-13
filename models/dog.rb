require 'bloc_record/base'

class Dog < BlocRecord::Base
  def to_s
    "Name: #{name}\nOwner_ID: #{owner_id}\n"
  end
end
