class UserRepo

  def initialize(database)
    @database = database
    @users = database[:users]
  end

end
