class Main
  get "/" do
    haml :home
  end

  get "/lookup" do
    @abbreviation = Abbreviation.find(:acronym => params[:acronym].strip.downcase).first if params[:acronym] && !params[:acronym].empty?
    @not_found = "Sorry, couldn't find anything for that abbreviation." unless @abbreviation
    haml :home
  end
end
