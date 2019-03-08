class AddOrgForeignKeyShifts < ActiveRecord::Migration[5.2]
  def change
    add_reference :shifts, :organization, index:true, foreign_key: true
  end
end
