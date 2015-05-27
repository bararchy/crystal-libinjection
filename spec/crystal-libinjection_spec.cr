require "./spec_helper"

describe "Libinjection" do
  it "works" do
    puts "Scanning 'Hello', is there an SQL injection ?"
    test = Libinjection::SqliScan.string("Hello")
    if test == 0
      puts "No Injection".colorize.green
    elsif test == 1
      puts "Injection".colorize.red
    end
    puts "Scanning 'Hello' OR 'a'='a' --DROP TABLE', is there an SQL injection ?"
    test = Libinjection::SqliScan.string("Hello' OR 'a'='a' --DROP TABLE")
    if test == 0
      puts "No Injection".colorize.red
    elsif test == 1
      puts "Injection".colorize.green
    end
  end
end
