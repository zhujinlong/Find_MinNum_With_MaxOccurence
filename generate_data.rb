startTime = Time.now

fileName = "randomNums"
writeFile = File.new(fileName, "w")
rnd = Random.new

10000000.times {
	num = rnd.rand(1..999999)
	writeFile.puts num	
}

writeFile.close

puts (Time.now - startTime).to_s + " seconds"