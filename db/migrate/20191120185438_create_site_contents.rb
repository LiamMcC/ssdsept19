class CreateSiteContents < ActiveRecord::Migration[5.0]
  def change
    create_table :site_contents do |t|
      t.string :title
      t.string :heading1
      t.string :heading2
      t.string :location

      t.timestamps
    end
  end
end
