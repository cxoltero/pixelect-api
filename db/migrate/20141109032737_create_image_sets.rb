class CreateImageSets < ActiveRecord::Migration
  def change
    create_table :image_sets do |t|
      t.text :question
      t.belongs_to :user, index: true
    end
  end
end
