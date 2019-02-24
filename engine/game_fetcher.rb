require 'yaml'
require 'pry'
require 'tty-prompt'
require 'luchadeer'

load "engine/classes/game.rb"
load "engine/classes/utils.rb"

@search_term =  ARGV.join(" ")

def load_games
  @game_list = YAML.load_file("engine/data/games.yml")
end

def save_games
  File.open("engine/data/games.yml", "r+") do |file|
    file.write(@game_list.to_yaml)
  end
end

def create_game(name)
  game = Game.new(name, false, "3ds", false) 
  return unless game.fetch_data

  out_file = File.new("engine/tmp/#{to_file_name(name)}.md", 'w')
  template = File.open("engine/templates/game.md.template").read
  render = template % game.to_hash
  out_file.puts(render)
  out_file.close
  game
end

def search(title)
  games = fetch_games(title)
  games.each do |game|
    game = Game.new(game) 
    game.to_template
  end
end

search @search_term