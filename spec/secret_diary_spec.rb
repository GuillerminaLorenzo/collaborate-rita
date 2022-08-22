require 'secret_diary'

RSpec.describe SecretDiary do
  it "initializes with diary" do
    diary = double :diary
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary).to be
  end

  it "starts locked" do
    diary = double :diary
    secret_diary = SecretDiary.new(diary)
    expect{  secret_diary.read  }.to raise_error "Go away!"
  end


  it "unlocks and reads diary" do
    diary = double :diary, read: "Day1"
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "Day1"
  end

  it "locks diary" do
    diary = double :diary
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{  secret_diary.read  }.to raise_error "Go away!"
  end

  
end