class Horario < ActiveRecord::Base
  belongs_to :onibu
  belongs_to :linha
end
