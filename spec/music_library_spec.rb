require 'music_library'

describe MusicLibrary do
    it "adds tracks to the list" do
        music_library = MusicLibrary.new
        track_1 = double :track
        track_2 = double :track
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end

    it 'searches by title' do
        music_library = MusicLibrary.new
        track_1 = double :track
        track_2 = double :track
        expect(music_library.search("track1")).to eq [track_1]
    end
end