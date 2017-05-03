class Alert < ApplicationRecord
    belonds-to :admin, :class_name => 'User', :foreign_key => 'admin_id'
end
