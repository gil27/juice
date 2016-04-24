class CreateAnalyzers < ActiveRecord::Migration
  def change
    create_table :analyzers do |t|
      t.string :query
      t.string :user_ip

      t.timestamps null: false
    end
  end
end
