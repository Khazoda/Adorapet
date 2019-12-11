require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  def contact_email
     ContactMailer.contact_email("june@me.com",
     "June", @message = "Hello, this is me contacting you about a thing I wish to contact you about.")
  end

  test "should return contact email" do
    mail = ContactMailer.contact_email("june@me.com",
    "June", @message = "Hello, this is me contacting you about a thing I wish to contact you about.")
    assert_equal['contact@adorapet.com'], mail.to
    assert_equal['contact@adorapet.com'], mail.from
  end
end
