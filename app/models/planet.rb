class Planet < ApplicationRecord
  belongs_to :owner_id, class_name: 'User' 
end
