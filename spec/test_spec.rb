RSpec.describe "Hello" do
  #use expect for expecting that a method is always called
  it "always greets Rita and Guille" do
    hello = double :hello
    expect(hello).to receive(:greet).with("Guille").and_return("Hello Guille")
    expect(hello).to receive(:greet).with("Rita").and_return("Hello Rita")
    expect(hello.greet("Guille")).to eq "Hello Guille" 
    expect(hello.greet("Rita")).to eq "Hello Rita"
  end

  #use allow for allowing only certain arguments to be passed
  it "doesn't greet Hitler or anyoen else except Rita and Guille" do
    hello = double :hello
    allow(hello).to receive(:greet).with("Guille").and_return("Hello Guille")
    allow(hello).to receive(:greet).with("Rita").and_return("Hello Rita")
    hello.greet("Hitler")
    hello.greet("My mom")
  end
end