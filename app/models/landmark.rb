# frozen_string_literal: true

class Landmark < ActiveRecord::Base
  belongs_to :figure
end
