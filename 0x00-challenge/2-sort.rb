###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    result << i_arg
end

l = result.size
j = l
while j > 0 do
    i = 0
    while i < (j - 1)
	    if result[i] > result[i + 1]
            temp = result[i]
            result[i] = result[i + 1]
            result[i + 1] = temp
        end
        i += 1
    end
    j -= 1
end 
puts result
