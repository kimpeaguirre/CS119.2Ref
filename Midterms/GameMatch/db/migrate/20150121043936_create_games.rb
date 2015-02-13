class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :game_date
      t.integer :team_a_id
      t.integer :team_a_score
      t.integer :team_b_id
      t.integer :team_b_score

      t.timestamps
    end
  end
end
