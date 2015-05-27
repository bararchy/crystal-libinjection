require "./spec_helper"

describe "Libinjection" do
  it "works" do

    puts "Scanning 'Hello', should return 'String is clear' ?"
    if Libinjection::SqliScan.contains_sqli?("Hello")
      puts "SQL injection found".colorize.green
    else
      puts "String is clear".colorize.green
    end

    puts "Scanning 'Hello' OR 'a'='a' --DROP TABLE', should return 'SQL injection found' ?"
    if Libinjection::SqliScan.contains_sqli?("Hello' OR 'a'='a' --DROP TABLE")
      puts "SQL injection found".colorize.green
    else
      puts "String is clear".colorize.green
    end

    puts "Scanning nil data, this should raise NilData"
    begin
      if Libinjection::SqliScan.contains_sqli?(nil)
        puts "SQL injection found".colorize.red
      else
        puts "String is clear".colorize.red
      end
    rescue e
      puts e.to_s.colorize.green
    end

    puts "Scanning empty data, this should raise EmptyData"
    begin
      if Libinjection::SqliScan.contains_sqli?("")
        puts "SQL injection found".colorize.red
      else
        puts "String is clear".colorize.red
      end
    rescue e
      puts e.to_s.colorize.green
    end
  end
end
