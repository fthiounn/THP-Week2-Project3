require_relative '../lib/app'

describe "login method" do
  it "should return the twitter client object if connected to my API" do
    expect(login()).to eq("#<Twitter::REST::Client:0x00007fe5861c9e40>")
  end
end
describe "login_stream method" do
  it "should return the twitter client object if connected to my API" do
    expect(login_stream()).to eq("#<Twitter::Streaming::Client:0x00007fc24d301be8>")
  end
end