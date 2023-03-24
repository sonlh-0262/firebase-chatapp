require "jwt"

class CreateToken
  class << self
		def create_custom_token(uid)
		  now_seconds = Time.now.to_i
		  payload = {:iss => service_account_email,
		             :sub => service_account_email,
		             :aud => "https://identitytoolkit.googleapis.com/google.identity.identitytoolkit.v1.IdentityToolkit",
		             :iat => now_seconds,
		             :exp => now_seconds+(60*60), # Maximum expiration time is one hour
		             :uid => uid}
		  JWT.encode payload, private_key, "RS256"
  	end

  	private

		# Get your service account's email address and private key from the JSON key file
  	def service_account_email
  		"chatapp-demo@chatapp-sonsn.iam.gserviceaccount.com"
  	end

  	def private_key
  		OpenSSL::PKey::RSA.new(ENV['FB_PRIVATE_KEY'])
  	end
  end
end
