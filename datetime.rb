class DateTime
	def self.dt

		time = Time.new

		# Components of a Time
		
		puts "Current Time : " + time.inspect
		puts time.year    # => Year of the date 
		puts time.month   # => Month of the date (1 to 12)
		puts time.day     # => Day of the date (1 to 31 )
		puts time.wday    # => 0: Day of week: 0 is Sunday
		puts time.yday    # => 365: Day of year
		puts time.hour    # => 23: 24-hour clock
		puts time.min     # => 59
		puts time.sec     # => 59
		puts time.usec    # => 999999: microseconds
		puts time.zone    # => "UTC": timezone name

		utc_time = Time.utc(2022, 3, 28, 10, 30, 15)
		puts "UTC Time: #{utc_time}"  # Output: UTC Time: 2022-03-28 10:30:15 UTC

		# Using Time.gm (which is equivalent to Time.utc)
		gm_time = Time.gm(2022, 3, 28, 10, 30, 15)
		puts "GM Time: #{gm_time}"    # Output: GM Time: 2022-03-28 10:30:15 UTC

		# Using Time.local
		local_time = Time.local(2022, 3, 28, 10, 30, 15)
		puts "Local Time: #{local_time}"  # Output: Local Time: 2022-03-28 10:30:15 +0100


		# Returns number of seconds since epoch
		time = Time.now.to_i  
		puts time

		# Convert number of seconds into Time object.
		puts Time.at(time)

		# Returns second since epoch which includes microseconds
		time = Time.now.to_f
		puts time
		
		time1 = Time.new
		# Here is the interpretation
		# puts time1.zone # => "UTC": return the timezone
		puts time1.utc_offset # => 0: UTC is 0 seconds offset from UTC
		puts time1.zone# => "PST" (or whatever your timezone is)
		puts time1.isdst# => false: If UTC does not have DST.
		puts time1.utc?# => true: if t is in UTC time zone
		time1.localtime  # Convert to local timezone.
		puts time1.gmtime # Convert back to UTC.
		puts time1.getlocal# Return a new Time object in local zone
		puts time1.getutc# Return a new Time object in UTC
		
		
puts time1.to_s
puts time1.ctime
puts time1.localtime
puts time1.strftime("%Y-%m-%d %H:%M:%S")

now = Time.now # Current time
puts now

past = now - 10 # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past |# => 10  Time - Time => number of seconds
puts diff
		
		
		
			



		
	end
end 
DateTime.dt