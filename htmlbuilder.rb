### Figured out how to write files ###
### Playing around ###

####  Input ####

puts "Hello. This is an HTML page builder." 
print "please enter title here: "
title = gets 

print "Please enter Background Color here: "
bgcolor = gets

print "please enter Header Text here: "
header_text = gets

print "Please enter Header Color here: "
header_color = gets

print "please enter Paragraph Text here: "
paragraph = gets

print "Please enter Paragraph Color here: "
paragraph_color = gets


### End of Input ###




puts title
puts bgcolor #Background color
puts header_text
puts header_color 
puts paragraph
puts paragraph_color

puts "Saving results to output file 'index.html'"

fh = File.new("index.html", "w")




fh.print "<!DOCTYPE html><html><head>"
fh.print "<title>"
fh.print title
########  CSS  #########
fh.print "</title><style type=\"text/css\">"
fh.print "body{background-color:" 
fh.print bgcolor
fh.print ";}"
fh.puts "header{text-align:center;color: "
fh.print header_color
fh.puts ";}"

fh.puts "p{text-align:center;text-indent:75px;color: "
fh.print paragraph_color
fh.print ";}"

fh.puts "</style></head>"

######## Start of body #########
fh.puts "<body>"


fh.puts "<header><h1>"
fh.puts header_text
fh.puts "</h1></header>"

fh.puts "<p>"
fh.puts paragraph



fh.puts "</p></body></html>"
fh.close