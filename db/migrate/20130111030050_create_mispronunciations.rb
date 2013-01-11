class CreateMispronunciations < ActiveRecord::Migration
  def change
    create_table :mispronunciations do |t|
      t.string :mispronunciation
      t.string :corrected_pronunciation

      t.timestamps
    end
  end
end
