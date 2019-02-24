class Game

  attr_accessor :game

  def initialize(game)
    @title = game.name
    @release = game.original_release_date
    @cover =  game.image.small_url
    @original_platform = game.platforms.map(&:abbreviation).join(" ").upcase
    @description = game.deck
    get_user_data
 end


 def get_user_data
  puts "Last make the files for #{@title} ?"

  have_game = TTY::Prompt.new.select("Do you have this game in your lib?", %w[yes no])
  @in_collection = have_game == 'yes'  
  return if have_game == 'no'

  @owned_platform = TTY::Prompt.new.ask("Where do you have it?").upcase

  finished_game = TTY::Prompt.new.select("Do you have finished this game?", %w[yes no])
  @finished = finished_game == 'yes'
  return if finished_game == 'no'

  @finished_date = TTY::Prompt.new.ask("Do you remember when?").upcase
 end


 def to_hash
  {
    title: "#{@title}",
    original_platform: @original_platform,
    release: @release,
    cover: @cover,
    description: @description,
    owned_platform: @owned_platform,
    finished_date: @finished_date,
    finished: @finished,
    in_collection: @in_collection,
  }
 end

 def to_template
    out_file = File.new("_games/#{to_file_name(@title)}.md", 'w')
    template = File.open("engine/templates/game.md.template").read
    render = template % to_hash
    out_file.puts(render)
    out_file.close
    true
  end
end
