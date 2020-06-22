class Ability
  include CanCan::Ability
  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can :read User
      can [:read, :update], Category
      end
  end
end