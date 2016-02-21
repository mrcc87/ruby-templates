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
    input_file = 'gns_conf.sql.erb'
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
    @sms_http_port = "8#{@sms_port_set}80"
    @ewl_jnp_port = "1#{@ewl_port_set}99"
    @ewl_http_port = "8#{@ewl_port_set}80"
    @cmp_jnp_port = "1#{@cmp_port_set}99"
    @cmp_http_port = "8#{@cmp_port_set}80"
    @dlv_jnp_port = "1#{@dlv_port_set}99"
    @dlv_http_port = "8#{@dlv_port_set}80"
    @loy_jnp_port = "1#{@loy_port_set}99"
    @loy_http_port = "8#{@loy_port_set}80"
    @ewn_jnp_port = "1#{@ewn_port_set}99"
    @ewn_http_port = "8#{@ewn_port_set}80"
    @cos_jnp_port = "1#{@cos_port_set}99"
    @cos_http_port = "8#{@cos_port_set}80"

    #endpoints
    #connect
    @gns_http_endpoint = "http://#{@gns_host}:#{@gns_http_port}"
    @gpil_http_endpoint = "http://#{@gpil_host}:#{@gpil_http_port}"
    @gns_jnp_endpoint = "jnp://#{@gns_host}:#{@gns_jnp_port}"
    @gpil_jnp_endpoint = "jnp://#{@gpil_host}:#{@gpil_jnp_port}"
    
    #pam jnp
    @sms_jnp_endpoint = "jnp://#{@sms_host}:#{@sms_jnp_port}"
    @ewl_jnp_endpoint = "jnp://#{@ewl_host}:#{@ewl_jnp_port}"
    @ewn_jnp_endpoint = "jnp://#{@ewn_host}:#{@ewn_jnp_port}"
    @cos_jnp_endpoint = "jnp://#{@cos_host}:#{@cos_jnp_port}"
    @dlv_jnp_endpoint = "jnp://#{@dlv_host}:#{@dlv_jnp_port}"
    @cmp_jnp_endpoint = "jnp://#{@cmp_host}:#{@cmp_jnp_port}"
    @loy_jnp_endpoint = "jnp://#{@loy_host}:#{@loy_jnp_port}"

    #pam http
    @sms_http_endpoint = "http://#{@sms_host}:#{@sms_http_port}"
    @ewl_http_endpoint = "http://#{@ewl_host}:#{@ewl_http_port}"
    @ewn_http_endpoint = "http://#{@ewn_host}:#{@ewn_http_port}"
    @cos_http_endpoint = "http://#{@cos_host}:#{@cos_http_port}"
    @dlv_http_endpoint = "http://#{@dlv_host}:#{@dlv_http_port}"
    @cmp_http_endpoint = "http://#{@cmp_host}:#{@cmp_http_port}"
    @loy_http_endpoint = "http://#{@loy_host}:#{@loy_http_port}"

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
  
  def cluster_endpoints
    cluster_ports
    @sms_jnp_endpoint = "jnp://#{@sms_host}-1:#{@sms_jnp_port},jnp://#{@sms_host}-2:#{@sms_jnp_port}"
    @ewl_jnp_endpoint = "jnp://#{@ewl_host}-1:#{@ewl_jnp_port},jnp://#{@ewl_host}-2:#{@ewl_jnp_port}"
    @ewn_jnp_endpoint = "jnp://#{@ewn_host}-1:#{@ewn_jnp_port},jnp://#{@ewn_host}-2:#{@ewn_jnp_port}"
    @cos_jnp_endpoint = "jnp://#{@cos_host}-1:#{@cos_jnp_port},jnp://#{@cos_host}-2:#{@cos_jnp_port}"
    @dlv_jnp_endpoint = "jnp://#{@dlv_host}-1:#{@dlv_jnp_port},jnp://#{@dlv_host}-2:#{@dlv_jnp_port}"
    @cmp_jnp_endpoint = "jnp://#{@cmp_host}-1:#{@cmp_jnp_port},jnp://#{@cmp_host}-2:#{@cmp_jnp_port}"
    @loy_jnp_endpoint = "jnp://#{@loy_host}-1:#{@loy_jnp_port},jnp://#{@loy_host}-2:#{@loy_jnp_port}"

    @sms_http_endpoint = "http://vip-rp-be"
    @ewl_http_endpoint = "http://vip-rp-be"
    @ewn_http_endpoint = "http://vip-rp-be"
    @cos_http_endpoint = "http://vip-rp-be"
    @dlv_http_endpoint = "http://vip-rp-be"
    @cmp_http_endpoint = "http://vip-rp-be"
    @loy_http_endpoint = "http://vip-rp-be"

  end

  def cluster
    cluster_endpoints
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
