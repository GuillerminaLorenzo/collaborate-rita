require 'track'

describe Track do
    it "matches the title" do
        track = Track.new("1 2 3", "4 5 6")
        expect(track.matches?("2")).to eq true
    end

    it "matches the artist" do
        track = Track.new("1 2 3", "4 5 6")
        expect(track.matches?("5")).to eq true
    end

    it "matches the artist" do
        track = Track.new("1 2 3", "4 5 6")
        expect(track.matches?("9")).to eq false
    end
end