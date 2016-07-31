class RemoveDefaultUsernameFromUsers < ActiveRecord::Migration
  def up
    change_column_default :users, :username, nil
  end

  def down
    change_column_default :users, :username, ''
  end
end
