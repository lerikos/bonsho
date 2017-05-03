class AlertPolicy < ApplicationPolicy
    
    # only admin users can create alerts
    def create?
        user.admin?
    end
    
    # only admin users can update alerts
    def update?
        user.admin?
    end
    
    # only admin users can delete alerts
    def destroy?
        user.admin?
    end
    
    
end