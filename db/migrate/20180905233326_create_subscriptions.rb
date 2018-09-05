class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :leader_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
