# frozen_string_literal: true

class CreateFigureTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :figure_titles do |t|
      t.integer :title_id
      t.integer :figure_id
    end
  end
end
