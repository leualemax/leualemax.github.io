def to_file_name(string)
  string.split(/\s+/).join("_").downcase 
end

def game_title_processor(string)
  string.split(/-/).join(" ").upcase 
end

def fetch_games(title)
  puts "Searching data for '#{title}' in GiantBombApi 💣"

  Luchadeer.configure(api_key: '0759a7c8fe6cd949e87c9c5da2e65207eca263a9')
  Luchadeer::Client.new(api_key: '0759a7c8fe6cd949e87c9c5da2e65207eca263a9')
  games = Luchadeer::Game.search title
  
  if games.empty?
    puts 'data not found 😞.'
    puts 'try again with another game!'
    false
  else 
    
    puts 'We have found some data! 🤓.'

    game_list_selector = games.map do |game|
      { 
        key: game.name, 
        name: "#{game.name} | #{DateTime.parse(game.original_release_date).year}", 
        value: game
      }
    end

    TTY::Prompt.new.multi_select("now select the games that you want to add!", game_list_selector)
  end
end