class PlanetPolicy < ApplicationPolicy
  def index?
    true
  end
 
  def show?
    true
  end

  def create?
    true
  end

  def update?
    owner?
  end

  def destroy?
    owner?
  end

  class Scope < Scope
    def resolve
      # if user.admin?
        scope.all
      # else
        # scope.where(owner_id: user.id)
      #end
    end

    private

    def owner?
      record.owner_id == user.id
    end
end
end
