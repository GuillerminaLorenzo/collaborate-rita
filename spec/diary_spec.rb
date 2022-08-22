require 'diary'

RSpec.describe Diary do
  it "initializes with contents" do
    expect(Diary.new("Day1")).to be
  end

  it "reads contents" do
    diary = Diary.new("Day1")
    expect(diary.read).to eq "Day1"
  end
end