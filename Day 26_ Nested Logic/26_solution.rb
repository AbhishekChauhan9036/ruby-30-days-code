# Enter your code here. Read input from STDIN. Print output to STDOUT

actual_date   = gets.split(" ").map(&: to_i)
expected_date = gets.split(" ").map(&: to_i)

def fine(actual_date, expected_date)
    actual_day     = actual_date[0]
    actual_month   = actual_date[1]
    actual_year    = actual_date[2]

    expected_day   = expected_date[0]
    expected_month = expected_date[1]
    expected_year  = expected_date[2]

    day_diff       = actual_day - expected_day
    month_diff     = actual_month - expected_month
    year_diff      = actual_year - expected_year
    fees           = nil

    if year_diff > 0
        fees = 10000
    elsif year_diff == 0 && month_diff == 0
        fees = 15 * day_diff
    elsif year_diff == 0 && month_diff > 0
        fees = 500 * month_diff
    else 
        fees = 0
    end
    puts fees
end

fine(actual_date, expected_date)