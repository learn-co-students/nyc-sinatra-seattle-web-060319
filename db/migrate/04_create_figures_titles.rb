class CreateFiguresTitles < ActiveRecord::Migration
    create_table :figures_titles do |t|
        t.integer   :figure_id
        t.integer   :title_id
    end
end