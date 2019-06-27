class CreateFigurestitleTable < ActiveRecord::Migration
  def change
    create_table :figurestitles do |t|
      t.integer :title_id
      t.integer :figure_id
    end
  end
end
