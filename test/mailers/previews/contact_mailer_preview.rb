# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
    def contact_email
        ContactMailer.contact_email("june@me.com",
        "June", @message = "Hello, this is me contacting you about a thing I wish to contact you about.")
    end
end
