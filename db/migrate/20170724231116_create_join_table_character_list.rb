class CreateJoinTableCharacterList < ActiveRecord::Migration[5.0]
  def change
    create_join_table :characters, :lists do |t|
      t.index [:character_id, :list_id]
    end
  end
end
