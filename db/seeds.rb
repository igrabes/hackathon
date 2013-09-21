# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



data = SportsDataApi::Mlb.all_players_with_stats(2013)

data.each do |player|
  begin
    a = PlayerMlb.create
    if player.last.last.has_key?("save")
        player.last.last.merge({"saves" => player.last.last["save"]}) 
        player.last.last.delete_if {|key, value| key == "save" } 
        a.update_attributes(player.first.instance_values)
        a.update_attributes(player.last.last)
    else
      a.update_attributes(player.first.instance_values)
      a.update_attributes(player.last.last)
    end
  rescue => e  
    puts "error was #{e}"
  end
end