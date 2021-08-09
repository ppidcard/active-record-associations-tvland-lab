class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        actors = []
        self.characters.map do |character|
            actors << "#{character.actor.first_name} #{character.actor.last_name}"
        end
        actors
    end
  end