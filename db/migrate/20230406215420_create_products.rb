class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string (:name)
      t.string (:image)
      t.float (:price)
      t.integer (:brand_id)
    end
  end
end
