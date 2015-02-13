Class Circle

	attr_acessor :radius, :color

	PI = 3.14

	#def initialize
		#@radius = 1.0
		#@color = "yellow"
	#end

	def initialize(r, c) 
		@raidius = r #make sure r is int
		@color = c  #make sure c is string
	end


	def initialize(r) #si c yung constant
		@radius = r 
		@color = "red"
	end

	#def initialize (c) #si r yung constant
		#@radius = 1.0
		#@color = c 
	#end