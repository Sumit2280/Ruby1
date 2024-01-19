#function for finding the ip address class

def find_ip_class(ip_address)

    # Split the IP address into octets
    octets = ip_address.split('.')
  
    # Check the first octet to determine the IP class
    case octets[0].to_i
    when 1..126
      return 'Class A'
    when 128..191
      return 'Class B'
    when 192..223
      return 'Class C'
    when 224..239
      return 'Class D'
    when 240..255
      return 'Class E '
    else
      return 'Invalid IP address'
    end
  end
  
  
  # Take input from user
  ip_address = gets.chomp
  ip_class = find_ip_class(ip_address)
  
  # Displaying class
  puts "IP Address: #{ip_address}"
  puts "IP Class: #{ip_class}"