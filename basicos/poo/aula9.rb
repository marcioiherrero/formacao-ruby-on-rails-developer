class Email
	attr_accessor :to, :from, :subject, :body
	
	def send
		#Toda a implementação da gem de envio de email.
		puts "Estou enviando email para #{to}..."
	end
	
	# torna o método "new" como privado para não ficar acessível de fora
	private_class_method :new
	
	def self.instancia
		# @@instancia = Email.new if @@instancia == nil
		@@instancia ||= self.new
		@@instancia
	end
end

# Qualquer instância criada através do método: "instacia" da classe Email, será a mesma para todas.

email = Email.instancia
email.to = "teste@teste.com"
email.send
puts email

email = Email.instancia
email.to = "testes@teste.com"
email.send
puts email

Email.instancia.to = "teste2@teste.com"
Email.instancia.send
puts Email.instancia
