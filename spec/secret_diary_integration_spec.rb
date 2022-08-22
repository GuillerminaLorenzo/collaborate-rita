require 'secret_diary'
require 'diary'

RSpec.describe "Secret Diary Integration" do
  it "initializes with a Diary" do
    secret_diary = SecretDiary.new(Diary.new("Day1"))
    expect(secret_diary).to be
  end

  it "starts diary as locked" do
    secret_diary = SecretDiary.new(Diary.new("Day1"))
    expect{  secret_diary.read  }.to raise_error "Go away!"
  end

  it "unlocks diary to read contents" do
    secret_diary = SecretDiary.new(Diary.new("Day1"))
    secret_diary.unlock
    expect(secret_diary.read).to eq "Day1"
  end

  it "locks diary after reading contents" do
    secret_diary = SecretDiary.new(Diary.new("Day1"))
    secret_diary.unlock
    secret_diary.read
    secret_diary.lock
    expect{  secret_diary.read  }.to raise_error "Go away!"
  end
end