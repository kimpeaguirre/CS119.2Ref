class Person
	#How do we represent the table?
	@table = "persons"

	#How do we represent fields?
	atrr_accessor :id, :first_name, :last_name	

	#How do we implement logic?
	def self.get_person_by_id(id)
		#some logic in here
	end

	def self.get_persons()
	end
end