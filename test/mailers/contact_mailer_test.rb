require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  
  test "should return contact email" do
    mail = ContactMailer.contact_email("alex@cszone.com", "Alex Brown", "1234567890", @message="Hello")
    assert_equal ['alex@cszone.com'], mail.to
    assert_equal ['alex@cszone.com'], mail.from
  end
  
end
