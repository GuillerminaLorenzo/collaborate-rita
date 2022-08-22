require 'music_library'
require 'track'

describe "integration" do
    it 'add tracks to the list' do
        music_library = MusicLibrary.new
        track_1 = Track.new("track1", "artist1")
        track_2 = Track.new("track2", "artist2")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end

    it 'searches by title' do
        music_library = MusicLibrary.new
        track_1 = Track.new("track1", "artist1")
        track_2 = Track.new("track2", "artist2")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("track1")).to eq [track_1]
    end
end
