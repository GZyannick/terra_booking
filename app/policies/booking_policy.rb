class BookingPolicy < ApplicationPolicy

  def create?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
  private
  def owner?
      record.owner_id == user.id
  end
end
