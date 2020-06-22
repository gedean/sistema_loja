class Ability
  include CanCan::Ability
  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can [:new, :read, :update], Category
      can [:new, :read, :update], Product
      can [:new, :read, :update], Sale
      end
  end
end