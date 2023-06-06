class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    actors.map(&:full_name)
  end

  def characters
    Character.where(show_id: id)
  end

  def network
    Network.find(network_id)
  end
end
