# app/models/ability.rb

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user (not logged in)

    # Define abilities for different roles
    if user.admin?
      can :manage, :all
    else
      can :destroy, Post, user_id: user.id
    end
  end
end
