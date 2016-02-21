require 'erb'
require 'colorize'

class SQLGenerator

  def get_parameters
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
  
  end

  def save
    input_file = 'templates/gns_conf.sql.erb'
    renderer = ERB.new(File.read(input_file))
    puts "renderind template... ".yellow
    output_file = input_file.gsub(".erb", "")
    puts "writing to file".green
    File.open(output_file, "w") do |f|
      f.puts renderer.result(binding)
    end
    puts "done".green

  end

  def single_node
    #connect
    @gns_http_port = "8#{@gns_port_set}80"
    @gpil_http_port = "8#{@gpil_port_set}80"
    @gns_jnp_port = "1#{@gns_port_set}99"
    @gpil_jnp_port = "1#{@gpil_port_set}99"
    
    #pam
    @sms_jnp_port = "1#{@sms_port_set}99"
    @ewl_jnp_port = "1#{@ewl_port_set}99"
    @cmp_jnp_port = "1#{@cmp_port_set}99"
    @dlv_jnp_port = "1#{@dlv_port_set}99"
    @loy_jnp_port = "1#{@loy_port_set}99"
    @ewn_jnp_port = "1#{@ewn_port_set}99"
    @cos_jnp_port = "1#{@cos_port_set}99"
  end

  def cluster_ports
    single_node
    @sms_jnp_port = (@sms_jnp_port.to_i + 1).to_s
    @ewl_jnp_port = (@ewl_jnp_port.to_i + 1).to_s
    @cmp_jnp_port = (@cmp_jnp_port.to_i + 1).to_s
    @dlv_jnp_port = (@dlv_jnp_port.to_i + 1).to_s
    @loy_jnp_port = (@loy_jnp_port.to_i + 1).to_s
    @ewn_jnp_port = (@cos_jnp_port.to_i + 1).to_s
    @cos_jnp_port = (@cos_jnp_port.to_i + 1).to_s
  end
  
  def cluster_hosts
  end

  def cluster
    cluster_ports
  end

  def run
    loop do
      puts "Single or cluser s/c: "
      input = gets.chomp
      case input
      when 's'
        get_parameters
        single_node
        save
      when 'c'
        get_parameters
        cluster
        save
      when 'n'
        break
      end
    end
  end
end


sql_generator = SQLGenerator.new
sql_generator.run

