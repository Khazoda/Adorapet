class ContactMailer < ApplicationMailer
    # email contents definition
    def contact_email(email, name, message)
        @email = email
        @name = name
        @message = message
        mail cc: @email
    end
end
