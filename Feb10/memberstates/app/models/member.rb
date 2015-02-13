class Member < ActiveRecord::Base

	STATUSES = ["active", "inactive"]

	validates :first_name, presence: true
	validates :last_name, presence: true

	validates :status, presence: true, inclusion: {in: STATUSES}

	validate :cannot_approve_active_member

	def cannot_approve_active_member
		if self.status == "active"
			errors.add(:status, "Cannot approve active member")
		end
	end

	before_validation :load_defaults

	def load_defaults
		#set default status to inactive
		if self.new_record?
			self.status = "inactive"
		end
	end

	def reject!
		if self.status == "inactive"
			raise "ERROR cannot reject inactive member"
		elsif self.status == "rejected"
			raise "ERROR cannot reject already rejected member"
		elsif self.status == "active"
			self.update!(status: "rejected")
		else 
			raise "ERROR anomaly in system"
		end
	end

	def deactivate!
		if self.status == "inactive"
			raise "ERROR in deactivating already inactive member"
		elsif self.status == "rejected"
			raise "ERROR cannot reject already rejected member"
		elsif self.status == "active"
			self.update!(status: "rejected")
		else 
			raise "ERROR anomaly in system"
		end
	end

	#raises an error if trying to approve already active
	#best way to catch an error because easier
	def approve!
		if self.status == "active"
			raise "ERROR in approving an already active member"
		elsif self.status == "rejected"
			raise "ERROR cannot approve rejected member"
		else
			self.update!(status: "active")
		end
	end

end
