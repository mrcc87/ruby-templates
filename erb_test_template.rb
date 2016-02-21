require 'erb'
require 'colorize'

puts "********** CONNECT *********\n".green
print "Connect core hostname: "
@gns_host = gets.chomp

print "Connect core port-set: "
@gns_port_set = gets.chomp

print "Gpil hostname: "
@gpil_host = gets.chomp

print "Gpil port-set: "
@gpil_port_set = gets.chomp

puts "\n"

puts "********** PAM *********\n".green
print "Sms hostname: "
@sms_host = gets.chomp

print "Sms port-set: "
@sms_port_set = gets.chomp

print "Ewl hostname: "
@ewl_host = gets.chomp

print "Ewl port-set: "
@ewl_port_set = gets.chomp

print "Dlv hostname: "
@dlv_host = gets.chomp

print "Dlv port-set: "
@dlv_port_set = gets.chomp

print "Ewn hostname: "
@ewn_host = gets.chomp

print "Ewn port-set: "
@ewn_port_set = gets.chomp

print "Cos hostname: "
@cos_host = gets.chomp

print "Cos port-set: "
@cos_port_set = gets.chomp

print "Cmp hostname: "
@cmp_host = gets.chomp

print "Cmp port-set: "
@cmp_port_set = gets.chomp

print "Loy hostname: "
@loy_host = gets.chomp

print "Loy port-set: "
@loy_port_set = gets.chomp

input_file = 'templates/gns_conf.sql.erb'
renderer = ERB.new(File.read(input_file))
puts "renderind template... ".yellow
output_file = input_file.gsub(".erb", "")

puts "writing to file".green
File.open(output_file, "w") do |f|
f.puts renderer.result
end

puts "done".green
