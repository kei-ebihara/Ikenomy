class AddJunresIdToShops < ActiveRecord::Migration[5.2]
  def change
    add_reference :shops, :junre, foreign_key: true, index: true, after: :description
  end
end
