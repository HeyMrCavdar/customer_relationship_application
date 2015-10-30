require_relative 'contact.rb'

class CRM

	def initialize(name)
		puts "Hey kid! I'm a computer! Stop all the downloading! I love the name #{name}!"
		@name = name
	end


	def print_main_menu
		puts "These are your options"
		puts "1. Add a new contact"
		puts "2. Modify an existing contact"
		puts "3. Delete a contact"
		puts "4. Display all contacts"
		puts "5. Display an attribute"
		puts "6. Exit"
		puts" Enter a number to continue:"
	end

	def main_menu
		while true
			print_main_menu
			user_selected = gets.to_i
			break if user_selected == 6
			call_option(user_selected)
		end
	end


	def call_option(user_selected)
		add_new_contact if user_selected == 1
		modify_existing_contact if user_selected == 2
		delete_contact if user_selected == 3
		display_contact if user_selected == 4
		display_attribute if user_selected == 5
		exit if user_selected == 6
	end

	def add_new_contact
		puts "Enter First Name: "
		first_name = gets.strip

		puts "Enter Last Name: "
		last_name = gets.strip

		puts "Enter Email Address: "
		email = gets.strip

		puts "Enter a Note: "
		note = gets.strip

		Contact.create(first_name, last_name, email: email, note: note)
		#Contact.create instead of .new to add the Contact to the array
	end

	def modify_existing_contact
		puts "I'm afraid my programmer was lazy, and did not include this functionality"
	end

	def self.run
		puts "Name your new CRM friend!"
		a_crm_app = CRM.new(gets.chomp)
		a_crm_app.main_menu
	end
end

CRM.run # NEED TO CALL YOUR DEFS