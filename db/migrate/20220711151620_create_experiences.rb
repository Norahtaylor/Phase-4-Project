class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.integer :user_id
      t.integer :place_id
      t.string :location
      t.integer :rating
      t.string :accompanied_by
      t.date :date_traveled
      t.string :highlights
      t.string :food_eaten
      t.string :drinks
      t.string :worst_moment
      t.string :weird_moment 
      t.string :best_moment 
      t.string :what_did_you_learn 
      t.string :secrets 
      t.string :story_of_how_we_met
      t.string :photo
      t.string :additional_notes 
      t.timestamps
    end
  end
end
