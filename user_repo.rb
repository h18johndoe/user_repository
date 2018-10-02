class UserRepo

  def initialize(database)
    @database = database
    @users = database[:users]
  end

  def user_exists?(identification)
    !get_user_by_identification(identification).nil?
  end

  private

  def get_user_by_identification(identification)
    @users.where(phone: identification).or(email: identification).first
  end

  def hash(password)
    password.reverse
  end

end
