nums = []
fileName = "randomNums"

if File.exist?(fileName)
  File.open(fileName, "r") { |file|
     while num=file.gets
        nums.push Integer(num)
     end
  }
end

startTime = Time.now
find_nums = Array.new(1000000, 0)

nums.each { |num|
	find_nums[num] += 1
}

maxCount = -1
minNum = -1

for i in 1..find_nums.length
	if find_nums[find_nums.length - i] > maxCount
		maxCount = find_nums[i]
		minNum = i
	end
end

puts (Time.now - startTime).to_s + " seconds"
puts  minNum.to_s+ " occured " + maxCount.to_s + " times"


