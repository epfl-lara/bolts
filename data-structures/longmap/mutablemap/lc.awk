#!/usr/bin/awk
#----------------------------------------------------------------------------
#
# Awk program to count lines of code in Scala source files.
# Has logic to keep track of embedded comments as well.
#
# Assumptions/limitations:
#  - Does not include blank lines in the average
#  - Counts *any* non-comment line as code eg { or } by themselves, etc
#  - depends on hash order of awk - this is risky! (See END code)
#  - Presently, the output redirects quite badly - command line option?
#  - Overflow if any number >32768 - mawk limitation.
#
# Paul Hubbard phubbard@computer.org written 5/1993
# Modified by Vassil Dichev vdichev@gmail.com 2011
# Apache 2.0 license - enjoy!

#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
# Main loop

# Print filename on read of first record
FNR == 1 {
	if (!DEBUG) printf("\r                                                           ")
	if (!DEBUG) printf("\rReading file: %s", FILENAME)
	comments[FILENAME] = 0
	lines[FILENAME] = 0
	fname[FILENAME] = FILENAME
	raw_linecount[FILENAME] = 0
	in_comment = 0
}

# Increment line count as first thing done
{
	raw_linecount[FILENAME]++
	CODE_LINE=!in_comment
	COMMENT_LINE=in_comment
	start = 1
	len = 0
	if($1 ~ /^\/\*|^\/\//) {
		CODE_LINE=0
	}
}

################################################################################
{
	s = $0

	while (match(s = substr(s, start + len), /\/\/|\/\*|\*\/|'"'|"[^"]|"""/) ) {
		start = RSTART
		len = RLENGTH
		token = substr(s, start, len)
		before = substr(s, 1, start - 1)
		# compensate for lack of zero-width negative lookahead
		if (index(token, "\"") == 1 && len == 2) {
			token = "\""
			len = 1
		}
		if (!in_comment && token == "\"\"\"") {
			in_string = !in_string
			if (!in_string) {
				match(s, /"""["]*/)
				len = RLENGTH
			}
			continue
		}
		after = substr(s, start + len)
		if (in_string) continue
		if (!in_comment && token == "\"") {
			s = before substr(after, match(after, /[^\\]"([^"]|$)/) + 1)
			continue
		}
		if (!in_comment && (token == "//" || token == "/*")) {
			if (!match(before, /^[ \t]*$/)) {
				CODE_LINE = 1
			}
			COMMENT_LINE=1
			if (token == "//") {
				break
			}
		}
	
		if (token == "/*") {
			in_comment++
		}
	
		if (token == "*/") {
			if (!match(after, /\/\/|\/\*|^[ \t]*$/) && in_comment == 1) {
				CODE_LINE=1
			}
			in_comment--
		}
	}
}
################################################################################

# Test for empty lines and skip
/^[ \t]*$/ {next}

COMMENT_LINE {comments[FILENAME]++}
CODE_LINE {lines[FILENAME]++}

#----------------------------------------------------------------------------
# Termination code
END {

	if (!DEBUG) {
		# Kluge clear EOL
		printf("\r                                                          \n")
	
		CCT = LCT = 0		# init totals
		idx = 0			# init pseudo-index
		maxlen = 0
		name_len = 0
	
		# Walk thru file names array to get maxlen
		for(i in fname) {
			if((length(fname[i])) > maxlen) {maxlen = length(fname[i])}
		}
	
		maxlen++
		name_len = maxlen	# save maxlen for formatting header
		if(name_len < 4) {name_len = 4}
	
		# Build formatting string for sprintf; eg "%15s " to beautify output
		spf_str = "%"
		maxlen = maxlen "s  "	# Convert number to string and add trailer
		spf_str = spf_str maxlen# Add pieces together to build format str
	
		# Walk thru file names array
		for(i in fname) {
			output[idx] = sprintf(spf_str, fname[i])
			idx++
		}
	
		idx = 0
	
		# Walk thru lines array
		for(i in lines) {
			tempstr = sprintf("%5d", lines[i])
			output[idx] = output[idx] tempstr
			LCT += lines[i]
			idx++
		}
	
		idx = 0
	
		# Walk thru comments array
		for(i in comments) {
			tempstr = sprintf("%11d", comments[i])
			output[idx] = output[idx] tempstr
			CCT += comments[i]
			idx++
		}
	
		idx = 0
		raw_lc = 0
	
		# Walk thru array of raw line counts (includes empty lines)
		for(i in raw_linecount) {
			tempstr = sprintf("%12d", raw_linecount[i])
			output[idx] = output[idx] tempstr
			idx++
			raw_lc += raw_linecount[i]
		}
	
		# Print header
		for(i = 0; i < (name_len - 4); i++) {printf"-"}
		str = "File---Code---Comments---Raw Lines"
		printf(str)
	
		j = length(str) + (name_len - 4)
	
		# Finish off the header line
		printf("\n")
		for(i = j; i < 80; i++) {printf("-")}
	
		# Dump constructed lines of data
		for(i = 0; i < idx; i++) {print output[i]}
	
		# Print trailer line
		for(i = 0; i < 80; i++) {printf("-")}
	
		#Dump totals
		printf("\n Total code: %d", LCT)
		printf("\n Total comments: %d", CCT)
		printf("\n Total raw lines: %d\n", raw_lc)
	
		if((LCT + CCT) > 0) {
			printf("Comment percentage: %f", (CCT / (LCT + CCT)) * 100)
		}
	
		print ""
	}
}