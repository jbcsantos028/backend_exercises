module AdminPermisson
  def edit_users_profile
    puts "Admin updated all users profile"
  end
end

module BuyerPermission
  def buy
    puts "Buyer has bought an item"
  end

end

class User
  attr_accessor :username, :password, :ip_address, :login_status
  
  def initialize(username, password, ip_address)
   @username = username
   @password = password
   @ip_address = ip_address
   @login_status = false
  end

  def change_password=(new_password)
    password = new_password
  end

  protected
  def login
    puts "User logged in. IP address: #{ip_address}"
  end
end


class Admin < User
  include AdminPermisson

  def admin_login
    print "Enter admin username: "
    username_input = gets.chomp
    print "Enter admin password: "
    password_input = gets.chomp

    if username_input == username && password_input == password
      login
      login_status = true
    else
      puts "Wrong admin credentials. Try logging in again."
    end
  end
end


class Buyer < User
  include BuyerPermission

  def buyer_login
    print "Enter buyer username: "
    username_input = gets.chomp
    print "Enter buyer password: "
    password_input = gets.chomp

    if username_input == username && password_input == password
      login
      login_status = true
    else
      puts "Wrong buyer credentials. Try logging in again."
    end
  end
end



## execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile

my_admin.change_password = 'new_password'

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy

buyer.change_password = 'new_password'