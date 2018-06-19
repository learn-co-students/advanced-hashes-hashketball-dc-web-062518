# Write your code here!

def game_hash
  game_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(name)
  var = nil
  game_hash.each do |team, team_info|
    team_info.each do |team_info_key, value|
      if team_info_key == :players && value.keys.include?(name)
         var = value[name][:points]
      end
    end
  end
  return var
end

def shoe_size(name)
  var = nil
  game_hash.each do |team, team_info|
    team_info.each do |team_info_key, value|
      if team_info_key == :players && value.keys.include?(name)
         var = value[name][:shoe]
      end
    end
  end
  return var
end

def team_colors(teamname)
  var = []
  game_hash.each do |team, team_info|
    team_info.each do |team_info_key, value|
      if team_info[team_info_key] == teamname
        var = team_info[:colors]
      end
    end
  end
  return var
end


def team_names
  var = []
  game_hash.each do |team, team_info|
    team_info.each do |team_info_key, value|
      if team_info_key == :team_name
        var << team_info[team_info_key]
      end
    end
  end
  return var
end

def player_numbers(teamname)
  var = []
  game_hash.each do |team, team_info|
    team_info.each do |team_info_key, value|
      if team_info[:team_name] == teamname && team_info_key == :players
        value.each do |name, stat_list|
          var << stat_list[:number]
        end
      end
    end
  end
  return var
end


def player_stats(name)
  var = nil
  game_hash.each do |team, team_info|
    team_info.each do |team_info_key, value|
      if team_info_key == :players && value.keys.include?(name)
         var = value[name]
      end
    end
  end
  return var
end

def big_shoe_rebounds
  shoe_var = 0
  var = nil
  game_hash.each do |team, team_info|
    team_info.each do |team_info_key, value|
      if team_info_key == :players
        value.each do |name, stat_list|
          if stat_list[:shoe] > shoe_var
            var = stat_list[:rebounds]
          end
        end
      end
    end
  end
  return var
end
