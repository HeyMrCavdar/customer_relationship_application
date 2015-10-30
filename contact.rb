class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []
	@@id = 1

	def initialize(first_name, last_name, options = {})
		@first_name = first_name
		@last_name = last_name
		@email = options[:email]
		@notes = options[:notes]
		@id = @@id
		@id += 1
	end

	def self.create(first_name, last_name, options = {})
		new_contact = Contact.new(first_name, last_name, options)
		@@contacts << new_contact
		puts "Your contact information has been added to the system!"
	end

	def Contact.all
		@@contacts
	end

	# def self.modify(first_name, last_name, options = {})
	# end

end
