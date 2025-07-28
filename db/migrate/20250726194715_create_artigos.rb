class CreateArtigos < ActiveRecord::Migration[8.0]
  def change
    create_table :artigos do |t|
      t.string :nome_artigo
      t.string :fonte
      t.string :link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
