class ArtistsController < ApplicationController
  def index
    keyword = params['keyword'].present? ? params['keyword'].gsub(/\s+/, '+') : 'Indonesia'
    @keyword = params['keyword'].present? ? params['keyword'].gsub(/\s+/, '+') : nil
    @page = params['page'].present? ? params['page'].to_i : 1

    # Get result from API last.fm
    results = JSON.parse(RestClient.get("http://ws.audioscrobbler.com/2.0/?method=geo.gettopartists&country=#{keyword}&api_key=635f92c583abcf3404dd1377219306e9&limit=5&page=#{@page}&format=json"))
    if results["error"].present?
      flash[:alert] = "country name invalid or not listed"
      redirect_to root_path
    else
      @top_artist = results["topartists"]["artist"]
      @values = WillPaginate::Collection.create(@page, 5,  results["topartists"]["@attr"]["totalPages"]) do |pager|
        pager.replace @top_artist
      end
    end

  end

  def show
    @name = params[:id]
    # Get result from API last.fm
    results = JSON.parse(RestClient.get("http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=#{@name}&api_key=635f92c583abcf3404dd1377219306e9&format=json"))
    @top_tracks = results["toptracks"]["track"]

    render component: 'Table', props: { top_tracks: @top_tracks }, tag: 'span', class: 'todo'

  end
end
