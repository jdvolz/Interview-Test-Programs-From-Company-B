

def valid(s)
	return false if s =~ /Z$/
	s.gsub!('Z','')
	length = s.length
	s.gsub!(/[MKPQ][a-j][a-j]/,'a')
	while(length != s.length)
		length = s.length
		s.gsub!(/[MKPQ][a-j][a-j]/,'a')		
	end
	s.length == 1
end

def main(line)
	tokens = line.split
	tokens.each do |token|
		status = if (valid(token.clone)) 
			"VALID"
		else 
			"INVALID"
		end
		print "#{token} #{status}\n"		
	end
end

## Run it like this:  ruby valid.rb "stream goes here"
main(ARGV[0])

## Joshua Volz 
## jdvolz@gmail.com 
## May 1st, 2011 
