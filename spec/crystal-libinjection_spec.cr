require "./spec_helper"

describe "Libinjection" do
  it "works" do
    Libinjection::SqliScan.string("Helo").should eq(0)
    Libinjection::SqliScan.string("Helo' OR 'a'='a' --DROP TABLE").should eq(1)
  end
end
