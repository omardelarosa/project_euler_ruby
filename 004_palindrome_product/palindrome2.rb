def get_even
	b = 997799
	(0..9).each do |x|
		level1 = b - (x * 100001)
		(0..9).each do |y|
				level2 = level1 - (y * 10010)
			(0..9).each do |z|
					level3 = level2 - (z * 1100)
					(100..999).each do |factor|
						if level3 / factor > 100 && level3 % factor == 0 && level3 / factor < 1000
							return level3
						end
					end

			end
		end
	end
end

def get_odd
	b = 99999
	(0..9).each do |x|
		level1 = b - (x * 10001)
		(0..9).each do |y|
				level2 = level1 - (y * 1010)
			(0..9).each do |z|
					level3 = level2 - (z * 100)
					(100..999).each do |factor|
						if level3 / factor > 100 && level3 % factor == 0 && level3 / factor < 1000
							return level3
						end
					end

			end
		end
	end
end

def pal
	return get_even < get_odd ? get_even : get_odd
end
# called once
pal