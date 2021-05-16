class RenameDayToBirthday < ActiveRecord::Migration[5.2]
  def change
  	rename_column :birthdays, :date, :birthday
  end
end
