class CreatePdfs < ActiveRecord::Migration[5.2]
  def change
    create_table :pdfs do |t|
      t.string :name
      t.string :remote_url

      t.timestamps
    end
  end
end
