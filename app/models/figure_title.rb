# frozen_string_literal: true

class FigureTitle < ActiveRecord::Base
  belongs_to :figure
  belongs_to :title
end
