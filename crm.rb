class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []
	@@id = 1

	def initialize(first_name, last_name, options = {})
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
	end

	def Contact.create(first_name, last_name, options = {})
		new_contact = Contact.new(first_name, last_name, options = {})
		new_contact.id = @@id
		@@contacts << new_contact
	end

	@@id += 1

	def Contact.all
		@@contacts

	def


