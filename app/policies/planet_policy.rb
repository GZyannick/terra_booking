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
     record.owner_id == user.id
  end

  def destroy?
     record.owner_id == user.id
  end

  class Scope < Scope
    def resolve
      scope.all
    end
end
end
