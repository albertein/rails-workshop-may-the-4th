class Pio < ActiveRecord::Base
  attr_accessible :message, :pollito_id
  belongs_to :pollito
end