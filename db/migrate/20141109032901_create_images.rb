class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :image_set, index: true
    end
  end
end
